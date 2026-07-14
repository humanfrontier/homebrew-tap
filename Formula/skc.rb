class Skc < Formula
  desc "Git-native, local-first AI skill management CLI"
  homepage "https://skillcatalog.dev/"
  url "https://github.com/humanfrontier/skillcatalog-releases/releases/download/v0.8.0/skc-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "83cd500208ae9365fd6aa3b76c6d4cf3d3dca89762d49618ee2d4a060c1b81d6"
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
