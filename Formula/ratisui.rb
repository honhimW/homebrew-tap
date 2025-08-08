class Ratisui < Formula
  desc "Redis TUI build with Ratatui, written in Rust."
  homepage "https://github.com/honhimW/ratisui"
  url "https://github.com/honhimW/ratisui/releases/download/0.5.4/ratisui-mac.tar.gz"
  version "0.5.4"
  sha256 "0a5aaa950eaa179a4ad58d5470a58d98387a7a14db00b296c5df9f2eeed07724"
  license all_of: ["MIT"]

  def install
    bin.install "ratisui"
  end
  
  test do
    system "#{bin}/ratisui --version"
  end
  
end
