cask "skillcatalog" do
  version "0.6.1"
  sha256 "c3d895df4e965f8cbefdf906443b0f20f298c73b85b1bd09440dcab93f19fb87"

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
