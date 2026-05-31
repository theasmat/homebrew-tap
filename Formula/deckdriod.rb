class Deckdriod < Formula
  desc "Professional Android Development Dashboard"
  homepage "https://github.com/theasmat/deckdriod"
  version "1.0.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/theasmat/deckdriod/releases/download/v#{version}/deckdriod-aarch64-apple-darwin.tar.gz"
      sha256 "b9e31ad6fc54cd57b705840e183c9c3157d1f97934ad89c347cf4cd3e523ca29"
    else
      url "https://github.com/theasmat/deckdriod/releases/download/v#{version}/deckdriod-x86_64-apple-darwin.tar.gz"
      sha256 "2ec0d2bbab9b9c9fe9ab7c829d6506bae519971b2df85dfecf1a69e8ffc721d4"
    end
  elsif OS.linux?
    url "https://github.com/theasmat/deckdriod/releases/download/v#{version}/deckdriod-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a33e524608c8edd8d83ce91a4045fa40f5704b4066d4a36e4a3f6f80d4bcce51"
  end

  def install
    bin.install "deckdriod"
  end

  test do
    system "#{bin}/deckdriod", "--version"
  end
end
