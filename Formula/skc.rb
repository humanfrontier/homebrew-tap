class Skc < Formula
  desc "Git-native, local-first AI skill management CLI"
  homepage "https://skillcatalog.dev/"
  url "https://github.com/humanfrontier/skillcatalog-releases/releases/download/v0.11.0/skc-v0.11.0-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "1ea9321bd93cb5ad04cc47bb91cc67b9a14c951a2bab331d38e9a58d89fa86f9"
  license "AGPL-3.0-only"

  depends_on arch: :x86_64
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
