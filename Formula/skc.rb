# Homebrew formula for the standalone `skc` CLI on Linux.
#
# This file is the source of truth. During a release, copy it to
# humanfrontier/homebrew-tap as Formula/skc.rb and update `version` + `sha256`
# to match the published skc-v<version>-x86_64-unknown-linux-gnu.tar.gz asset.
# See docs/linux-cli-release.md.
#
# macOS users get `skc` from the desktop cask instead:
#   brew install --cask humanfrontier/tap/skillcatalog
class Skc < Formula
  desc "Git-native, local-first AI skill management CLI"
  homepage "https://skillcatalog.dev/"
  version "0.7.5"
  license "AGPL-3.0-or-later"

  on_linux do
    on_intel do
      url "https://github.com/humanfrontier/skillcatalog-releases/releases/download/v#{version}/skc-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      # shasum -a 256 of the tarball (see dist/*.sha256 from the build script)
      sha256 "a6f9a15d3dc2c8920b234f90b0579b2f7eb0a4f515bbd8544f5f62a725c6d2dc"
    end
  end

  def install
    bin.install "skc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skc --version")
  end
end
