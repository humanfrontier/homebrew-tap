class Skc < Formula
  desc "Git-native, local-first AI skill management CLI"
  homepage "https://skillcatalog.dev/"
  url "https://github.com/humanfrontier/skillcatalog-releases/releases/download/v0.7.9/skc-v0.7.9-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "374b80e2d6232ce8c78a06dd90628bd37ff603922255f91d6488b3389ec20cd8"
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
