cask "hisohiso-app" do
  version "0.2.7"
  sha256 "881d50c35a4c799c3df02208456f88e54e6fa8db1213522295ffbc2e41fd5e56"

  url "https://github.com/dungle-scrubs/hisohiso/releases/download/v#{version}/hisohiso-v0.2.7-darwin-arm64.zip"
  name "Hisohiso"
  desc "Local-first macOS dictation app with multi-backend transcription"
  homepage "https://github.com/dungle-scrubs/hisohiso"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Hisohiso.app"
  binary "#{appdir}/Hisohiso.app/Contents/MacOS/Hisohiso", target: "hisohiso"
end
