class Ratisui < Formula
  desc "Redis TUI build with Ratatui, written in Rust"
  homepage "https://github.com/honhimW/ratisui"
  # version "x.y.z"
  license all_of: ["MIT"]

  release_version = "0.6.2"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/honhimW/ratisui/releases/download/#{release_version}/ratisui-mac-intel.tar.gz"
      sha256 "27463f44a4d0f4903e258111c3a166725f351a23d60c296814f4099dd9be308a"
    else
      url "https://github.com/honhimW/ratisui/releases/download/#{release_version}/ratisui-mac-aarch64.tar.gz"
      sha256 "607a561b395874f7aeeb4c91f0e7002ff25a516ea57af78340ff60bab11a64ff"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/honhimW/ratisui/releases/download/#{release_version}/ratisui-linux-aarch64.tar.gz"
      sha256 "f4e42f07b73b24931c38c91d9e0e3a2451dfe7e9609e9b311b0854359ad5ebff"
    else
      url "https://github.com/honhimW/ratisui/releases/download/#{release_version}/ratisui-linux-amd64.tar.gz"
      sha256 "4bcec805a0dce7ca32a6ca17ab6903419ac378ba744d28a6a24b607cb1e49aea"
    end
  end

  def install
    bin.install "ratisui"
  end

  test do
    system "#{bin}/ratisui", "--version"
  end
end
