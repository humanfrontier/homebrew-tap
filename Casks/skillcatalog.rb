cask "skillcatalog" do
  version "0.1.0"
  sha256 "PLACEHOLDER"

  url "https://github.com/humanfrontier/skillcatalog-releases/releases/download/v#{version}/SkillCatalog_#{version}_universal.dmg"
  name "SkillCatalog"
  desc "Git-native, local-first AI skill management"
  homepage "https://skillcatalog.dev"

  app "SkillCatalog.app"

  zap trash: [
    "~/Library/Application Support/dev.skillcatalog.app",
    "~/Library/Caches/dev.skillcatalog.app",
  ]
end
