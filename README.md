# awscyy Homebrew tap

Signed and notarized macOS apps from awscyy.

## PrintStatus

A menu-bar app showing Prusa Connect printer status, job progress, and model previews. Requires macOS 14 or later; supports Apple silicon and Intel.

```sh
brew install --cask awscyy/taps/printstatus
open -a PrintStatus
```

Upgrade with `brew upgrade --cask awscyy/taps/printstatus`, or uninstall with `brew uninstall --cask awscyy/taps/printstatus`.

[Source and releases](https://github.com/awscyy/printstatus). The app's Release workflow updates the cask after building, Developer ID signing, notarizing, stapling, and verifying the downloadable release. Each version pins the exact ZIP's SHA-256 checksum. Do not edit the generated cask by hand; its source is `scripts/update-cask.rb` in the app repository.

Normal uninstall preserves preferences and sign-in data. Sign out inside PrintStatus before uninstalling if you want its Prusa session data removed. `brew uninstall --zap --cask awscyy/taps/printstatus` also removes the app's preferences; it does not erase shared WebKit directories or signing keychains.
