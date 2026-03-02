cask "hisohiso-app" do
  version "0.2.4"
  sha256 "3e8133f75f68d9d401be361c8e6e64a7c97bed7d75872d4b8d3e44b6584aa81a"

  url "https://github.com/dungle-scrubs/hisohiso/releases/download/v#{version}/hisohiso-v#{version}-darwin-arm64.zip"
  name "Hisohiso"
  desc "Local-first macOS dictation app with multi-backend transcription"
  homepage "https://github.com/dungle-scrubs/hisohiso"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Hisohiso.app"
  binary "#{appdir}/Hisohiso.app/Contents/MacOS/Hisohiso", target: "hisohiso"
end
