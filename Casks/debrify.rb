cask "debrify" do
  version "0.10.0-beta.1"
  sha256 "cfe95aa9d384c905d5ec08cdd4982c863b40672c081dbf50085d6534ea8be57e"

  url "https://github.com/varunsalian/debrify/releases/download/v#{version}/debrify-v#{version}.dmg"
  name "Debrify"
  desc "Your personal media hub: One app to browse, stream, and organize media from your own services — with a cinematic player built in"
  homepage "https://debrify.tv/"

  livecheck do
    url :url
    regex(/^debrify[._-]v?(\d+(?:\.\d+)+(?:-[a-z0-9.]+)?)\.dmg$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  app "Debrify.app"

  zap trash: [
    "~/Library/Application Scripts/com.example.torrentSearchApp",
    "~/Library/Containers/com.example.torrentSearchApp",
  ]
end
