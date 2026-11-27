cask "compactor" do
  version "26.11.27"
  sha256 "939610724561ac5c4c23e1ffe5c7cab7408a3647c7e4353805a239e2709b123f"

  url "https://github.com/coderscantina/compactor/releases/download/v#{version}/Compactor-#{version}.dmg"
  name "Compactor"
  desc "See where disk space goes and remove what you mark"
  homepage "https://github.com/coderscantina/compactor"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Compactor.app"

  uninstall launchctl: "com.coderscantina.compactor.helper"

  zap trash: [
    "~/Library/Application Support/com.coderscantina.compactor",
    "~/Library/Saved Application State/com.coderscantina.compactor.savedState",
  ]
end
