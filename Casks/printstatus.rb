cask "printstatus" do
  version "1.3.2"
  sha256 "a824b7b68407c1685efb6502c488bff885e93463c181ce38b0ef762545320500"

  url "https://github.com/awscyy/printstatus/releases/download/v#{version}/PrintStatus-#{version}.zip"
  name "PrintStatus"
  desc "Menu bar status and model previews for Prusa Connect printers"
  homepage "https://github.com/awscyy/printstatus"

  depends_on macos: :sonoma

  app "PrintStatus.app"

  uninstall quit: "org.aidans.PrintStatus"

  zap trash: "~/Library/Preferences/org.aidans.PrintStatus.plist"
end
