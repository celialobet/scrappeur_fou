require_relative '../lib/crypto.rb'
require 'nokogiri'

describe "crypto_scrapper method" do

  describe "fonctionnement de base ok" do
    it "vérifier si pas de nil" do
      expect(crypto_scrapper).not_to be_nil
    end

    it "vérifier taille du tableau" do
      expect(crypto_scrapper.size).to eq(200)
    end
  end

end