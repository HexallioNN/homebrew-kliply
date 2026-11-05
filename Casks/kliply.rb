cask "kliply" do
  version "1.0.4"
  sha256 "f1205dde2cdc8b743b696e79e70fdce091997d5003e3feb2ba45fff3df7e9c05"

  url "https://kliplyapp.com/download/Kliply-#{version}.zip"
  name "Kliply"
  desc "Instant replay and automatic gameplay clips"
  homepage "https://kliplyapp.com/"

  livecheck do
    url :homepage
    regex(/Kliply[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: :sonoma

  app "Kliply.app"

  zap trash: [
    "~/Library/Application Support/nl.hexallion.kliply",
    "~/Library/Preferences/nl.hexallion.kliply.plist",
    "~/Library/Saved Application State/nl.hexallion.kliply.savedState",
  ]
end
