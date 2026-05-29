cask "skillcatalog" do
  version "0.6.6"
  sha256 "89638b13c9c338053ddc0e805d6b6d946d22f012ca46af52cbce00e898047e44"

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
