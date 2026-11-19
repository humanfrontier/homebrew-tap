class Skc < Formula
  desc "Git-native, local-first AI skill management CLI"
  homepage "https://skillcatalog.dev/"
  url "https://github.com/humanfrontier/skillcatalog-releases/releases/download/v0.12.1/skc-v0.12.1-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "86568ae1b8d01c0abb39cc183d088c893826e8fb264bc62a9cae029a5d17ca37"
  license "AGPL-3.0-only"

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/humanfrontier/skillcatalog-releases/releases/download/v0.12.1/skc-v0.12.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "447052baaa4ab9f0da1ada7faa370985d15d6070518f078b44c8892e177d6fd5"
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
