require 'sentence_checker'

RSpec.describe 'sentence_checker' do
    it "Checks that the sentence has a capital letter and right punctuation" do
        expect(sentence_checker("This has a capital letter.")).to be true 
    end

    it "Does not have a capital letter or correct punctuation at end " do
        expect(sentence_checker("this ends with a fullstop")).to be false
    end
end