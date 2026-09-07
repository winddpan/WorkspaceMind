cask "tangrid-app" do
  version "1.6.3"
  sha256 "d7804e99799786beebf849159beade495986296aa14938f544960e29901d0ffe"

  url "https://github.com/winddpan/Tangrid/releases/download/1.6.3/tangrid-1.6.3.zip"
  name "Tangrid"
  desc "Window manager with snapping, tiling, Window Switcher, Dock previews, Workspace"
  homepage "https://github.com/winddpan/Tangrid"

  livecheck do
    url "https://api.tangrid.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Tangrid.app"

  zap trash: [
    "~/Library/Application Support/Tangrid",
    "~/Library/Caches/Tangrid",
    "~/Library/Preferences/com.wrapper.Tangrid.plist",
  ]
end