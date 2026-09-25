cask "kliply" do
  version "1.0.1"
  sha256 "c84a5db9b04a1289a1c6b9976f54cdfcaa0a8018bb1d78fcac28b623681941a5"

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
