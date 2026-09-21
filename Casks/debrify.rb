cask "debrify" do
  version "0.9.6-alpha.1"
  sha256 "da32cbc28a16a7739109eb5f42bda02dac8bb00c65f7d844489c6139f1e857b5"

  url "https://github.com/varunsalian/debrify/releases/download/v#{version}/debrify-v#{version}.dmg"
  name "Debrify"
  desc "Your personal media hub: One app to browse, stream, and organize media from your own services — with a cinematic player built in"
  homepage "https://debrify.tv/"

  app "debrify.app"

  zap trash: [
    "~/Library/Application Scripts/com.example.torrentSearchApp"
    "~/Library/Containers/com.example.torrentSearchApp"
  ]
end