cask "debrify" do
  version "0.10.3-alpha.1"
  sha256 "30d3547993823aa1bc11ceb6ac88d52424d8bcb7340854badcbc60ac45087268"

  url "https://github.com/varunsalian/debrify/releases/download/v#{version}/debrify-v#{version}.dmg"
  name "Debrify"
  desc "Personal media hub to browse, stream, and organize media"
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

  depends_on macos: :monterey

  app "Debrify.app"

  zap trash: [
    "~/Library/Application Scripts/com.example.torrentSearchApp",
    "~/Library/Containers/com.example.torrentSearchApp",
  ]
end
