cask "voicewink" do
  version "1.73.4"
  sha256 "2d0b78cb98687b1217c628395538c8c47830cfc72b7d74f36ee9053cef06a908"

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
