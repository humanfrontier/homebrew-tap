cask "voicewink" do
  version "1.73.3"
  sha256 "affe45f122a3be029113389dec1f509a75451582fb10cc597153807b8fd3071b"

  url "https://github.com/humanfrontier/voicewink/releases/download/v#{version}/VoiceWink-#{version}.zip"
  name "VoiceWink"
  desc "Local voice-to-text app for macOS"
  homepage "https://github.com/humanfrontier/voicewink"

  depends_on macos: ">= :sonoma"

  app "VoiceWink.app"

  caveats do
    <<~EOS
      This build is not notarized.
      If macOS blocks it on first launch, first use:
        System Settings > Privacy & Security > Open Anyway

      Terminal fallback:
        xattr -dr com.apple.quarantine "/Applications/VoiceWink.app"
    EOS
  end
end
