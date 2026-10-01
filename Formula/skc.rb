class Skc < Formula
  desc "Git-native, local-first AI skill management CLI"
  homepage "https://skillcatalog.dev/"
  url "https://github.com/humanfrontier/skillcatalog-releases/releases/download/v0.10.1/skc-v0.10.1-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "eb71d98d847e228aae2e867ede16e421cd49f52cd048e05c15d0a582862985c8"
  license "AGPL-3.0-only"

  depends_on :linux

  def install
    libexec.install "skc", "catalogs"
    bin.install_symlink libexec/"skc"
    generate_completions_from_executable(bin/"skc", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skc --version")
    assert_path_exists libexec/"catalogs/skillcatalog-essentials/catalog.yaml"
    assert_path_exists bash_completion/"skc"
    assert_path_exists zsh_completion/"_skc"
    assert_path_exists fish_completion/"skc.fish"
  end
end
