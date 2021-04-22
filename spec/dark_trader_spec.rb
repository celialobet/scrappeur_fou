require_relative '../lib/dark_trader.rb'

# describe "crypto_scrapper method" do
  describe "Pas d'erreurs ni de retour vide" do
    it "should" do
      # expect(crypo_scrapper).not_to be_nil
      expect(crypto_scrapper).not_to be_empty
    end
  end
# end