class Todox < Formula
  desc "TODO/FIXME explorer for Git repositories"
  homepage "https://github.com/phyten/todox"
  license "MIT"

  version "0.12.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.12.0/todox-v0.12.0-darwin-arm64.tar.gz"
      sha256 "501befdddfe29af273fc113824f777def59460b8982e2dba82fbf53fffd3d810"
    else
      url "https://github.com/phyten/todox/releases/download/v0.12.0/todox-v0.12.0-darwin-amd64.tar.gz"
      sha256 "6ac3ea7233e3cd9c18acd82b670aef994b47619ce9c32690f78eaf7654a621dd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/phyten/todox/releases/download/v0.12.0/todox-v0.12.0-linux-arm64.tar.gz"
      sha256 "edf940a9777b5eca59ce41ad1f79e31aab3e8b8f145392ba5e9cba3af18b6f93"
    else
      url "https://github.com/phyten/todox/releases/download/v0.12.0/todox-v0.12.0-linux-amd64.tar.gz"
      sha256 "f0dd49ecfae728e0cbcedf4db39f2438e6f14e523205141b160e2a846246e68c"
    end
  end

  def install
    bin.install "todox"
  end

  test do
    system "#{bin}/todox", "--help"
  end
end
