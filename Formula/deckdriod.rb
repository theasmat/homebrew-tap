class Deckdriod < Formula
  desc "Professional Android Development Dashboard"
  homepage "https://github.com/theasmat/deckdriod"
  version "1.0.8"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/theasmat/deckdriod/releases/download/v#{version}/deckdriod-aarch64-apple-darwin.tar.gz"
      sha256 "94840b7ee3e9e2d5908610378c3656a6db3a62423456b4fcf341d2db3f87fd55"
    else
      url "https://github.com/theasmat/deckdriod/releases/download/v#{version}/deckdriod-x86_64-apple-darwin.tar.gz"
      sha256 "38e3c3a410651078718f595a5b241b956448436e72fe8cc3bc50cb0d42a1b557"
    end
  elsif OS.linux?
    url "https://github.com/theasmat/deckdriod/releases/download/v#{version}/deckdriod-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a86c640b2208ade2bb91248a243f20644c3efc4f539fe7b18525d76c78aa2253"
  end

  def install
    bin.install "deckdriod"
  end

  test do
    system "#{bin}/deckdriod", "--version"
  end
end
