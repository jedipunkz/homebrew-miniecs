# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Miniecs < Formula
  desc "AWS ECS Login, Exec CLI"
  homepage "https://github.com/jedipunkz/miniecs"
  version "1.6.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jedipunkz/miniecs/releases/download/v1.6.2/miniecs_1.6.2_darwin_amd64.tar.gz"
      sha256 "5144635299151aa5344030aabd8be1e7059ceca39e6a45b1628098c36a530db7"

      def install
        bin.install "miniecs"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jedipunkz/miniecs/releases/download/v1.6.2/miniecs_1.6.2_darwin_arm64.tar.gz"
      sha256 "884d7b429dba126893af622d92aef675bc1d34c149d437d4c2fd18a7225e4da9"

      def install
        bin.install "miniecs"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/jedipunkz/miniecs/releases/download/v1.6.2/miniecs_1.6.2_linux_armv6.tar.gz"
      sha256 "5e5982a8e23fb4b153aa832f58aa768f1bec79fcb8c1d020b349f38d42381840"

      def install
        bin.install "miniecs"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jedipunkz/miniecs/releases/download/v1.6.2/miniecs_1.6.2_linux_arm64.tar.gz"
      sha256 "a30324d7b855a234174b8ccaf768e29c2cde8afef34e3a061edd2954cd320cf5"

      def install
        bin.install "miniecs"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jedipunkz/miniecs/releases/download/v1.6.2/miniecs_1.6.2_linux_amd64.tar.gz"
      sha256 "401a4d12ef7ca4caaf3be4eca8de28056eac07a8c3575bf316ee8329e80c1952"

      def install
        bin.install "miniecs"
      end
    end
  end

  test do
    system "${bin}/miniecs --help"
  end
end
