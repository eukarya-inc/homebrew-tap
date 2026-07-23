cask "honyo" do
  version "0.6.0"

  on_intel do
    url "https://github.com/eukarya-inc/honyo/releases/download/v#{version}/Honyo-#{version}.dmg"
    sha256 "bde769e2e0c3aca5248a6f0370401a5ca5063faf4367be7384392d7fbf0e2b27"
  end
  on_arm do
    url "https://github.com/eukarya-inc/honyo/releases/download/v#{version}/Honyo-#{version}-arm64.dmg"
    sha256 "b7f5ab11d02c0ad7b01f139d33dd01114e8f8710d2c46bc46c7d8af9a75c8024"
  end

  name "Honyo"
  desc "AI-powered instant translation with double Cmd+C"
  homepage "https://github.com/eukarya-inc/honyo"

  auto_updates true
  app "Honyo.app"

  zap trash: [
    "~/Library/Application Support/honyo",
    "~/Library/Preferences/com.rot1024.honyo.plist",
  ]
end
