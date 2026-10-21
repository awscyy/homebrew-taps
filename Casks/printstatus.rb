cask "printstatus" do
  version "1.3.1"
  sha256 "390ab822183e091934e00a9f16fbf15b6c426ef0d58b79db3db9642b08c7a1e5"

  url "https://github.com/awscyy/printstatus/releases/download/v#{version}/PrintStatus-#{version}.zip"
  name "PrintStatus"
  desc "Menu bar status and model previews for Prusa Connect printers"
  homepage "https://github.com/awscyy/printstatus"

  depends_on macos: :sonoma

  app "PrintStatus.app"

  uninstall quit: "org.aidans.PrintStatus"

  zap trash: "~/Library/Preferences/org.aidans.PrintStatus.plist"
end
