class Skc < Formula
  desc "Git-native, local-first AI skill management CLI"
  homepage "https://skillcatalog.dev/"
  url "https://github.com/humanfrontier/skillcatalog-releases/releases/download/v0.7.8/skc-v0.7.8-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "bede6a6d6295f0f7deaac7a00721a6e73d9864c91b2764a702fab6b13734a2ea"
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
