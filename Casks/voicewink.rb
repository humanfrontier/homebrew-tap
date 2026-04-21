cask "voicewink" do
  version "1.73.2"
  sha256 "e189aa9b79498efbd549ddc46990549f1525e3c5770fb6abfcb7b374a61ea644"

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
