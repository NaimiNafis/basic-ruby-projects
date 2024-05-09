#spec/caesar_cipher_spec.rb
require './lib/caesar_cipher.rb'

describe "#caesar_cipher" do
    it "returns simple shift of a positive number" do
        expect(caesar_cipher("HELLO", 3)).to eql("KHOOR")
    end

    it "returns simple shift of a negative number" do
        expect(caesar_cipher("HELLO", -3)).to eql("EBIIL")
    end

    it "returns wraparound from Z to A" do
        expect(caesar_cipher("XYZ", 3)).to eql("ABC")
    end

    it "returns wraparound from A to Z with negative shift" do
        expect(caesar_cipher("ABC", -3)).to eql("XYZ")
    end

    it "includes numbers and punctuation unchanged" do
        expect(caesar_cipher("HELLO, WORLD! 123", 5)).to eql("MJQQT, BTWQI! 123")
    end

    it "handles an empty string" do
        expect(caesar_cipher("", 3)).to eql("")
    end

    it "handles a shift greater than 26" do
        expect(caesar_cipher("HELLO", 29)).to eql("KHOOR")
    end

    it "handles a shift less than -26" do
        expect(caesar_cipher("HELLO", -29)).to eql("EBIIL")
    end

    it "returns mixed case properly shifted" do
        expect(caesar_cipher("HeLLo", 4)).to eql("LiPPs")
    end

end