class Skc < Formula
  desc "Git-native, local-first AI skill management CLI"
  homepage "https://skillcatalog.dev/"
  url "https://github.com/humanfrontier/skillcatalog-releases/releases/download/v0.7.10/skc-v0.7.10-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "c1cc623292dd60dda53db4c44d4d49ff3a2acee9afd9de69e4a51dc8057f4c7f"
  license "AGPL-3.0-only"

  depends_on :linux

  def install
    bin.install "skc"
    generate_completions_from_executable(bin/"skc", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skc --version")
    assert_path_exists bash_completion/"skc"
    assert_path_exists zsh_completion/"_skc"
    assert_path_exists fish_completion/"skc.fish"
  end
end
