cask "skillcatalog" do
  version "0.1.0"
  sha256 "ea88bebe984d4c066c77f35af9e7e1705cf969a59877e8858b6069b7cd4983b7"

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
