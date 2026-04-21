cask "voicewink" do
  version "1.73.1"
  sha256 "b53e816c42a149f5489e9a0a67659cc92bcb43ce3e6ca0cc65912470be092642"

  url "https://github.com/humanfrontier/voicewink/releases/download/v#{version}/VoiceWink-#{version}.zip"
  name "VoiceWink"
  desc "Local voice-to-text app for macOS"
  homepage "https://github.com/humanfrontier/voicewink"

  depends_on macos: ">= :sonoma"

  app "VoiceWink.app"

  caveats do
    <<~EOS
      This build is not notarized.
      If macOS blocks it on first launch, either install without quarantine:
        brew install --cask --no-quarantine humanfrontier/tap/voicewink

      Or remove quarantine after install:
        xattr -dr com.apple.quarantine "/Applications/VoiceWink.app"
    EOS
  end
end
