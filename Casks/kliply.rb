cask "kliply" do
  version "1.0.2"
  sha256 "58ad0b222c1d1e2a1d64dd39e7e0429929ad7b85dbe2db9fc9cb4f698b34142b"

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
