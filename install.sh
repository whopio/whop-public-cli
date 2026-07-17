#!/bin/sh
# Installs the Whop CLI:  curl -fsSL https://whop.com/install.sh | sh
#
#   WHOP_INSTALL_DIR             install location (default user executable directory)
#   WHOP_INSTALL_VERSION         version to install, e.g. 0.1.0 (default: latest)
#   WHOP_INSTALL_BASE_URL        asset directory override (testing/rc: any URL curl
#                                accepts, incl. file://) — takes priority
#   WHOP_INSTALL_NO_MODIFY_PATH  if set, never touch shell profiles; print the
#                                PATH line to add instead
set -eu

repo="whopio/whop-public-cli"
if [ -n "${WHOP_INSTALL_DIR:-}" ]; then
	install_dir="$WHOP_INSTALL_DIR"
elif [ -n "${XDG_BIN_HOME:-}" ]; then
	install_dir="$XDG_BIN_HOME"
elif [ -n "${XDG_DATA_HOME:-}" ]; then
	install_dir="$(dirname "$XDG_DATA_HOME")/bin"
else
	install_dir="$HOME/.local/bin"
fi

error() {
	printf "\033[31merror\033[0m: %s\n" "$1" >&2
	exit 1
}

case "$(uname -s)" in
Darwin) os="darwin" ;;
Linux) os="linux" ;;
*) error "Unsupported OS: $(uname -s). Install via npm instead: npm install -g @whop/cli" ;;
esac

case "$(uname -m)" in
arm64 | aarch64) arch="arm64" ;;
x86_64 | amd64) arch="x64" ;;
*) error "Unsupported architecture: $(uname -m). Install via npm instead: npm install -g @whop/cli" ;;
esac

target="$os-$arch"

if [ -n "${WHOP_INSTALL_BASE_URL:-}" ]; then
	base_url="$WHOP_INSTALL_BASE_URL"
elif [ -n "${WHOP_INSTALL_VERSION:-}" ]; then
	base_url="https://github.com/$repo/releases/download/v$WHOP_INSTALL_VERSION"
else
	base_url="https://github.com/$repo/releases/latest/download"
fi

command -v curl >/dev/null 2>&1 || error "curl is required"
command -v tar >/dev/null 2>&1 || error "tar is required"

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

printf "Downloading whop (%s)...\n" "$target"
curl -fsSL "$base_url/whop-$target.tar.gz" -o "$tmp_dir/whop.tar.gz" ||
	error "Download failed from $base_url/whop-$target.tar.gz"
curl -fsSL "$base_url/SHA256SUMS" -o "$tmp_dir/SHA256SUMS" ||
	error "Checksum download failed"

expected="$(grep " whop-$target.tar.gz\$" "$tmp_dir/SHA256SUMS" | cut -d' ' -f1)"
[ -n "$expected" ] || error "No checksum found for whop-$target.tar.gz"
if command -v sha256sum >/dev/null 2>&1; then
	actual="$(sha256sum "$tmp_dir/whop.tar.gz" | cut -d' ' -f1)"
else
	actual="$(shasum -a 256 "$tmp_dir/whop.tar.gz" | cut -d' ' -f1)"
fi
[ "$expected" = "$actual" ] || error "Checksum mismatch: expected $expected, got $actual"

tar -xzf "$tmp_dir/whop.tar.gz" -C "$tmp_dir"
mkdir -p "$install_dir"
mv "$tmp_dir/whop" "$install_dir/whop"
chmod 755 "$install_dir/whop"

printf "Installed %s to %s\n" "$("$install_dir/whop" --version | head -n1 | sed 's/^/whop v/')" "$install_dir"

path_ready=""
path_configured=""
case ":$PATH:" in
*":$install_dir:"*) path_ready="1" ;;
*)
	shell_name="$(basename "${SHELL:-sh}")"
	case "$shell_name" in
	zsh) rc="$HOME/.zshrc" ;;
	bash) rc="$HOME/.bashrc" ;;
	fish) rc="$HOME/.config/fish/config.fish" ;;
	*) rc="" ;;
	esac
	if [ "$shell_name" = "fish" ]; then
		path_line="fish_add_path $install_dir"
	else
		path_line="export PATH=\"$install_dir:\$PATH\""
	fi
	if [ -n "$rc" ] && [ -z "${WHOP_INSTALL_NO_MODIFY_PATH:-}" ]; then
		mkdir -p "$(dirname "$rc")"
		if [ ! -f "$rc" ] || ! grep -Fqs "$path_line" "$rc"; then
			printf "\n%s\n" "$path_line" >>"$rc"
		fi
		path_configured="1"
		printf "\nAdded whop to your PATH in %s.\n" "$rc"
	else
		printf "\nAdd whop to your PATH by adding this to your shell profile:\n"
		printf "  %s\n" "$path_line"
	fi
	;;
esac

if [ -n "$path_ready" ]; then
	printf "\nRun \`whop\` to get started\n"
elif [ -n "$path_configured" ]; then
	printf "\n\033[1mRun \`whop\` in a new terminal to get started\033[0m\n"
else
	printf "\n\033[1mAdd whop to your PATH, then run \`whop\` to get started\033[0m\n"
fi
