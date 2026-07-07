#!/bin/sh
# Installs the Whop CLI:  curl -fsSL https://whop.com/install.sh | sh
#
#   WHOP_INSTALL_DIR       install location (default ~/.whop/bin)
#   WHOP_INSTALL_VERSION   version to install, e.g. 0.1.0 (default: latest)
#   WHOP_INSTALL_BASE_URL  asset directory override (testing/rc: any URL curl
#                          accepts, incl. file://) — takes priority
set -eu

repo="whopio/whop-public-cli"
install_dir="${WHOP_INSTALL_DIR:-$HOME/.whop/bin}"

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

case ":$PATH:" in
*":$install_dir:"*) ;;
*)
	shell_name="$(basename "${SHELL:-sh}")"
	case "$shell_name" in
	zsh) rc="~/.zshrc" ;;
	bash) rc="~/.bashrc" ;;
	fish) rc="~/.config/fish/config.fish" ;;
	*) rc="your shell profile" ;;
	esac
	printf "\nAdd whop to your PATH by adding this to %s:\n" "$rc"
	if [ "$shell_name" = "fish" ]; then
		printf "  fish_add_path %s\n" "$install_dir"
	else
		printf "  export PATH=\"%s:\$PATH\"\n" "$install_dir"
	fi
	;;
esac

printf "\nGet started with: whop quickstart\n"
