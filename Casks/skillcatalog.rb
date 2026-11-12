cask "skillcatalog" do
  version "0.12.0"
  sha256 "1d5c83249d3e814d64c7f63904cd6dec95fc1ee104f1743ab0e8d9841c488faa"

  url "https://github.com/humanfrontier/skillcatalog-releases/releases/download/v#{version}/SkillCatalog.app.tar.gz"
  name "SkillCatalog"
  desc "Git-native, local-first AI skill management"
  homepage "https://skillcatalog.dev/"

  depends_on :macos

  app "SkillCatalog.app"
  binary "#{appdir}/SkillCatalog.app/Contents/MacOS/skc"

  zap trash: [
    "~/Library/Application Support/com.skillcatalog.desktop",
    "~/Library/Caches/com.skillcatalog.desktop",
  ]
end
