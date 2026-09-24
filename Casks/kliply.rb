cask "kliply" do
  version "1.0"
  sha256 "a3bae29ffc51242c804253e254efcee5c4d07551ee38c986d497e45faa2eff7d"

  url "https://kliplyapp.com/download/Kliply-#{version}.zip"
  name "Kliply"
  desc "Instant replay and automatic gameplay clips"
  homepage "https://kliplyapp.com/"

  livecheck do
    url :homepage
    regex(/Kliply[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :sonoma"

  app "Kliply.app"

  zap trash: [
    "~/Library/Application Support/nl.hexallion.kliply",
    "~/Library/Preferences/nl.hexallion.kliply.plist",
    "~/Library/Saved Application State/nl.hexallion.kliply.savedState",
  ]
end
