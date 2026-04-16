cask "skillcatalog" do
  version "0.1.1"
  sha256 "2dfdb2da8feced63fc2c5198a3f26819cf2af0cc63e85fb43f6a6b07e8487dba"

  url "https://github.com/humanfrontier/skillcatalog-releases/releases/download/v#{version}/SkillCatalog.app.tar.gz"
  name "SkillCatalog"
  desc "Git-native, local-first AI skill management"
  homepage "https://skillcatalog.dev"

  app "SkillCatalog.app"

  zap trash: [
    "~/Library/Application Support/com.skillcatalog.desktop",
    "~/Library/Caches/com.skillcatalog.desktop",
  ]
end
