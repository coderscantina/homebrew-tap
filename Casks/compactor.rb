# Filled in at the first release: version from the tag, sha256 from the DMG.
cask "compactor" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/coderscantina/compactor/releases/download/v#{version}/Compactor-#{version}.dmg"
  name "Compactor"
  desc "See where disk space goes and remove what you mark"
  homepage "https://github.com/coderscantina/compactor"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Compactor.app"

  uninstall launchctl: "com.coderscantina.compactor.helper"

  zap trash: [
    "~/Library/Application Support/com.coderscantina.compactor",
    "~/Library/Saved Application State/com.coderscantina.compactor.savedState",
  ]
end
