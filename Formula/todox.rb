class Todox < Formula
  desc "TODO/FIXME explorer for Git repositories"
  homepage "https://github.com/phyten/todox"
  license "MIT"

  version "0.14.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.14.1/todox-v0.14.1-darwin-arm64.tar.gz"
      sha256 "113ba9eb0dc1ec6b86d96c2a58f07927f959a58c43d40f3e984b49aff50f672b"
    else
      url "https://github.com/phyten/todox/releases/download/v0.14.1/todox-v0.14.1-darwin-amd64.tar.gz"
      sha256 "641bb809eba19a9cfe2ce25aab45336ea82ee10d9404f4e57cb6aed47723a198"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.14.1/todox-v0.14.1-linux-arm64.tar.gz"
      sha256 "9ba190de01ce508592ad9b986febf4d71dc587b5b459c904e57bee3175e919af"
    else
      url "https://github.com/phyten/todox/releases/download/v0.14.1/todox-v0.14.1-linux-amd64.tar.gz"
      sha256 "e5928193a2cd981bc36a510f595de5a7f40844e3f627d3122248ab0bad955e1f"
    end
  end

  def install
    bin.install "todox"
  end

  test do
    system "#{bin}/todox", "--help"
  end
end
