cask "kliply" do
  version "1.0.3"
  sha256 "5b1ca503831350ce80fef480136ad75f589654267743d6ac44673d1417651155"

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
