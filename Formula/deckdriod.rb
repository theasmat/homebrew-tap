class Deckdriod < Formula
  desc "Professional Android Development Dashboard"
  homepage "https://github.com/theasmat/deckdriod"
  version "1.0.7"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/theasmat/deckdriod/releases/download/v#{version}/deckdriod-aarch64-apple-darwin.tar.gz"
      sha256 "c7cc91cd5e8adbb6a29bacc19d26a1a4cb1107935c18c5a07757896aa72ef275"
    else
      url "https://github.com/theasmat/deckdriod/releases/download/v#{version}/deckdriod-x86_64-apple-darwin.tar.gz"
      sha256 "a6147ce6ece8d930396ede7329e1b1db86750944253b0b0d8b4914fe44c2eb98"
    end
  elsif OS.linux?
    url "https://github.com/theasmat/deckdriod/releases/download/v#{version}/deckdriod-x86_64-unknown-linux-musl.tar.gz"
    sha256 "3d6ecca39ab5476c1ffb4599cc3ef1e97b6fae22e3ec9b7124ba5567a6a08fe4"
  end

  def install
    bin.install "deckdriod"
  end

  test do
    system "#{bin}/deckdriod", "--version"
  end
end
