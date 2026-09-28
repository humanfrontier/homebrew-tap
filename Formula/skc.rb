class Skc < Formula
  desc "Git-native, local-first AI skill management CLI"
  homepage "https://skillcatalog.dev/"
  url "https://github.com/humanfrontier/skillcatalog-releases/releases/download/v0.9.1/skc-v0.9.1-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "a7ff9827f9d19c627052b63b389eb3d161f45f43675583e5a7378f1f918d6f64"
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
