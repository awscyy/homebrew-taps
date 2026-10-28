cask "printstatus" do
  version "1.4"
  sha256 "f3e4f6e33d5216398c9befb4e0dabb2df6b32a9849d3e7742e8a06ecff75aec9"

  url "https://github.com/awscyy/printstatus/releases/download/v#{version}/PrintStatus-#{version}.zip"
  name "PrintStatus"
  desc "Menu bar status and model previews for Prusa Connect printers"
  homepage "https://github.com/awscyy/printstatus"

  depends_on macos: :sonoma

  app "PrintStatus.app"

  uninstall quit: "org.aidans.PrintStatus"

  zap trash: "~/Library/Preferences/org.aidans.PrintStatus.plist"
end
