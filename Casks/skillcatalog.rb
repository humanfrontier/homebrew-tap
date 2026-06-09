cask "skillcatalog" do
  version "0.6.8"
  sha256 "a0c6ab196e6e1dae63332d1553c16e3f1b0a3013c67b40ef5952d7fa893852b6"

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
