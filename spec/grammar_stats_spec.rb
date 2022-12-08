require_relative '../lib/grammar_stats'

describe 'grammar_stats' do
  it "returns a true when 'Hello world.' is given" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("Hello world.")).to eq true
  end
  it "returns false when 'Hello world' is given" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("Hello world")).to eq false
  end
  it "returns false when 'hello world.' is given" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("hello world.")).to eq false
  end
  it "returns an integer when a perctenage is requested" do
    grammar_stats = GrammarStats.new
    grammar_stats.check('Hello, world.')
    expect(grammar_stats.percentage_good.class).to eq Integer
  end
  it 'will return 100% when every test passes' do
    grammar_stats = GrammarStats.new
    grammar_stats.check('Hello, world.')
    expect(grammar_stats.percentage_good).to eq 100
  end
  it 'will return 75% when three quarters of the tests pass' do
    grammar_stats = GrammarStats.new
    grammar_stats.check('Hello, world.')
    grammar_stats.check('Hello, world.')
    grammar_stats.check('Hello, world')
    grammar_stats.check('Hello, world')
    expect(grammar_stats.percentage_good).to eq 75
  end
end
