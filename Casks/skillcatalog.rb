cask "skillcatalog" do
  version "0.1.7"
  sha256 "3087d22b04490979c1648297816a367c89932cf8e9ff9f3ba749e2e33e066e55"

  url "https://github.com/humanfrontier/skillcatalog-releases/releases/download/v#{version}/SkillCatalog.app.tar.gz"
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
