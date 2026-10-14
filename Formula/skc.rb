class Skc < Formula
  desc "Git-native, local-first AI skill management CLI"
  homepage "https://skillcatalog.dev/"
  license "AGPL-3.0-only"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/humanfrontier/skillcatalog-releases/releases/download/v0.11.2/skc-v0.11.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1fb7c6d018ce7406f8bd1c980139a77f3f210ec45e1641267ec6054a3dd4cf12"
    end
    on_arm do
      url "https://github.com/humanfrontier/skillcatalog-releases/releases/download/v0.11.2/skc-v0.11.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "22edba724209953f2e21c964f473f8b4251d949852bf46d771e6470de0340c25"
    end
  end

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
