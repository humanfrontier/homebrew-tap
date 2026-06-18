cask "skillcatalog" do
  version "0.7.4"
  sha256 "3a1265b36e61b46b63cd9527022638cd4dc3a5e459615b0df761365350f8fbcd"

  url "https://github.com/humanfrontier/skillcatalog-releases/releases/download/v#{version}/SkillCatalog.app.tar.gz",
      verified: "github.com/humanfrontier/skillcatalog-releases/"
  name "SkillCatalog"
  desc "Git-native, local-first AI skill management"
  homepage "https://skillcatalog.dev/"

  depends_on macos: :big_sur

  app "SkillCatalog.app"
  binary "#{appdir}/SkillCatalog.app/Contents/MacOS/skc"

  zap trash: [
    "~/Library/Application Support/com.skillcatalog.desktop",
    "~/Library/Caches/com.skillcatalog.desktop",
  ]
end
