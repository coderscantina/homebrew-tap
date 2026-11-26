cask "compactor" do
  version "26.11.26"
  sha256 "fc17f4dd93f04d09bdc2a1a7094d9836b508a20874b41d1c7d152e43d8d2bf7e"

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
