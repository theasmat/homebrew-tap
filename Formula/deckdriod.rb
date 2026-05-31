class Deckdriod < Formula
  desc "Professional Android Development Dashboard"
  homepage "https://github.com/theasmat/deckdriod"
  version "1.0.5"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/theasmat/deckdriod/releases/download/v#{version}/deckdriod-aarch64-apple-darwin.tar.gz"
      sha256 "00928d439152e8aafaf53327997ff03291953e98e7e24a1f40c636137c994be8"
    else
      url "https://github.com/theasmat/deckdriod/releases/download/v#{version}/deckdriod-x86_64-apple-darwin.tar.gz"
      sha256 "9f3243901ed52f4f2bf8083400e766eddba48215fc6fc4b2220f2bb8f7fc6345"
    end
  elsif OS.linux?
    url "https://github.com/theasmat/deckdriod/releases/download/v#{version}/deckdriod-x86_64-unknown-linux-musl.tar.gz"
    sha256 "d2b4036b5c18b1626cf984fdff1363b5fd65b824da91f0a28cccb14718ca3811"
  end

  def install
    bin.install "deckdriod"
  end

  test do
    system "#{bin}/deckdriod", "--version"
  end
end
