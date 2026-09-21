cask "debrify" do
  version "0.9.7-alpha.1"
  sha256 "0d4547931c587b3173b7299dee0c8d5fe1deee99cd0aa480efc9f501222ce7a9"

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