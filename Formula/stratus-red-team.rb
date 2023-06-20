# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class StratusRedTeam < Formula
  desc ""
  homepage "https://stratus-red-team.cloud"
  version "2.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/DataDog/stratus-red-team/releases/download/v2.6.0/stratus-red-team_2.6.0_Darwin_arm64.tar.gz"
      sha256 "5237f24c505f36e8c409445a0158575c19e63f51fb9ba2156bc75aaacabe62c7"

      def install
        bin.install "stratus"

        # Install shell completions
        generate_completions_from_executable(bin/"stratus", "completion", shells: [:bash, :fish, :zsh], base_name: "stratus")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/DataDog/stratus-red-team/releases/download/v2.6.0/stratus-red-team_2.6.0_Darwin_x86_64.tar.gz"
      sha256 "7f0f78fe85e4d86e98a84f6706e53717c6e1214e26c7823981ac5dbc9971c8f0"

      def install
        bin.install "stratus"

        # Install shell completions
        generate_completions_from_executable(bin/"stratus", "completion", shells: [:bash, :fish, :zsh], base_name: "stratus")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/DataDog/stratus-red-team/releases/download/v2.6.0/stratus-red-team_2.6.0_Linux_arm64.tar.gz"
      sha256 "1cc2e63b6a2937d981b1c5ee92c0477df9a5764e3459875c88b1c0b1afeb64aa"

      def install
        bin.install "stratus"

        # Install shell completions
        generate_completions_from_executable(bin/"stratus", "completion", shells: [:bash, :fish, :zsh], base_name: "stratus")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/DataDog/stratus-red-team/releases/download/v2.6.0/stratus-red-team_2.6.0_Linux_x86_64.tar.gz"
      sha256 "6bac1fd340aea9b7da87654620d0f1a42223334b9fa15075ca2cb9212d0cddf8"

      def install
        bin.install "stratus"

        # Install shell completions
        generate_completions_from_executable(bin/"stratus", "completion", shells: [:bash, :fish, :zsh], base_name: "stratus")
      end
    end
  end
end
