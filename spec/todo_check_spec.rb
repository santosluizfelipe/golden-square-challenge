require 'todo_check'

describe do 
    it "returns true if #TODO is included in the passed string" do 
        expect(todo_check("this is a #TODO")).to eq true
    end

    it "returns false if #TODO is not included to the passed string" do 
        expect(todo_check("this string does not include")).to eq false
    end
end