cask "skillcatalog" do
  version "0.1.5"
  sha256 "426594c99d24537e09f9543b43dc0da23e9371919c45593be963449edebd4748"

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
