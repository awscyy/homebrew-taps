cask "printstatus" do
  version "1.3.3"
  sha256 "561206cf17240a1ba57e76a282142fb4e5b50b466cb5a4e627724da4b6521b36"

  url "https://github.com/awscyy/printstatus/releases/download/v#{version}/PrintStatus-#{version}.zip"
  name "PrintStatus"
  desc "Menu bar status and model previews for Prusa Connect printers"
  homepage "https://github.com/awscyy/printstatus"

  depends_on macos: :sonoma

  app "PrintStatus.app"

  uninstall quit: "org.aidans.PrintStatus"

  zap trash: "~/Library/Preferences/org.aidans.PrintStatus.plist"
end
