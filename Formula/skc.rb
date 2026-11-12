class Skc < Formula
  desc "Git-native, local-first AI skill management CLI"
  homepage "https://skillcatalog.dev/"
  url "https://github.com/humanfrontier/skillcatalog-releases/releases/download/v0.12.0/skc-v0.12.0-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "757a190994c534d4d202ff1b9c4adace6f4853c253cb10cdee3e0ad947d9c476"
  license "AGPL-3.0-only"

  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/humanfrontier/skillcatalog-releases/releases/download/v0.12.0/skc-v0.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6989c9473cd1500efd4849aaf84e6f6c4de02e632a67a6b16b661a4a624166d2"
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
