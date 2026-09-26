cask "debrify" do
  version "0.10.0-beta.1"
  sha256 "cfe95aa9d384c905d5ec08cdd4982c863b40672c081dbf50085d6534ea8be57e"

  url "https://github.com/varunsalian/debrify/releases/download/v#{version}/debrify-v#{version}.dmg"
  name "Debrify"
  desc "Your personal media hub: One app to browse, stream, and organize media from your own services — with a cinematic player built in"
  homepage "https://debrify.tv/"

  app "Debrify.app"

  zap trash: [
    "~/Library/Application Scripts/com.example.torrentSearchApp",
    "~/Library/Containers/com.example.torrentSearchApp",
  ]
end