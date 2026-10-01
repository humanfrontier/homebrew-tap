cask "skillcatalog" do
  version "0.10.1"
  sha256 "77030b0a39865fdcba873c1bf1134c2b04834dbff9646a92ac8eeb87e3c80cc6"

  url "https://github.com/humanfrontier/skillcatalog-releases/releases/download/v#{version}/SkillCatalog.app.tar.gz"
  name "SkillCatalog"
  desc "Git-native, local-first AI skill management"
  homepage "https://skillcatalog.dev/"

  depends_on :macos

  app "SkillCatalog.app"
  binary "#{appdir}/SkillCatalog.app/Contents/MacOS/skc"

  zap trash: [
    "~/Library/Application Support/com.skillcatalog.desktop",
    "~/Library/Caches/com.skillcatalog.desktop",
  ]
end
