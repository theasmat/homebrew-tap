class Deckdriod < Formula
  desc "Professional Android Development Dashboard"
  homepage "https://github.com/theasmat/deckdriod"
  version "1.0.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/theasmat/deckdriod/releases/download/v#{version}/deckdriod-aarch64-apple-darwin.tar.gz"
      sha256 "12c4851e8933a64a177df1629b8aa3360f7e77c42701868e1c7937b336472111"
    else
      url "https://github.com/theasmat/deckdriod/releases/download/v#{version}/deckdriod-x86_64-apple-darwin.tar.gz"
      sha256 "fa261834c51fdddee54bd5731d3f97b8c851f888e06b0ee1822a73654cb1dc5e"
    end
  elsif OS.linux?
    url "https://github.com/theasmat/deckdriod/releases/download/v#{version}/deckdriod-x86_64-unknown-linux-musl.tar.gz"
    sha256 "5f79edb888703ebfce9bb35a6c0139580b60ea1a45b7f823035c002cd7531db4"
  end

  def install
    bin.install "deckdriod"
  end

  test do
    system "#{bin}/deckdriod", "--version"
  end
end
