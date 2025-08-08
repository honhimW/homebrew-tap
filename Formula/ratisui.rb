class Ratisui < Formula
  desc "Redis TUI build with Ratatui, written in Rust."
  homepage "https://github.com/honhimW/ratisui"
  version "0.5.4"
  license all_of: ["MIT"]

  on_macos do
    url "https://github.com/honhimW/ratisui/releases/download/0.5.4/ratisui-mac.tar.gz"
    sha256 "0a5aaa950eaa179a4ad58d5470a58d98387a7a14db00b296c5df9f2eeed07724"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/honhimW/ratisui/releases/download/0.5.4/ratisui-linux-aarch64.tar.gz"
      sha256 "94ac64065170776f3d10bd29b857c420dd90c514d56f422e555034ed9feb42d7"
    else
      url "https://github.com/honhimW/ratisui/releases/download/0.5.4/ratisui-linux-amd64.tar.gz"
      sha256 "474639af03de1dac31b4de4dff6988dda49ad468ce22f0d35cceb580077c1676"
    end
  end

  def install
    bin.install "ratisui"
  end

  
  def install
    bin.install "ratisui"
  end
  
  test do
    system "#{bin}/ratisui --version"
  end
  
end
