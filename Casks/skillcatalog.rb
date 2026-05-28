cask "skillcatalog" do
  version "0.6.4"
  sha256 "0d069d59c8ff91e8ae02958b64203ead0c5e3f0b33afae71a8260d375bf657de"

  url "https://github.com/humanfrontier/skillcatalog-releases/releases/download/v#{version}/SkillCatalog.app.tar.gz",
      verified: "github.com/humanfrontier/skillcatalog-releases/"
  name "SkillCatalog"
  desc "Git-native, local-first AI skill management"
  homepage "https://skillcatalog.dev"

  app "SkillCatalog.app"
  binary "#{appdir}/SkillCatalog.app/Contents/MacOS/skc"

  zap trash: [
    "~/Library/Application Support/com.skillcatalog.desktop",
    "~/Library/Caches/com.skillcatalog.desktop",
  ]
end
