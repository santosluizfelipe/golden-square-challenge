class GrammarStats
  def initialize
    @check_total = 0
    @punctuation_count = 0
    @capital_count = 0
  end

  def check(text)
    punctuation = ['!', '?', '.']
    @has_punctuation = punctuation.include? text[-1]
    @has_capital = text[0] == text[0].upcase

    @punctuation_count += 1 if @has_punctuation
    @capital_count += 1 if @has_capital
    @check_total += 2

    @has_capital && @has_punctuation
  end

  def percentage_good
    pass = @capital_count + @punctuation_count
    total = pass.to_f / @check_total * 100
    total.to_i
  end
end

grammar_stats = GrammarStats.new
grammar_stats.check('Hello, world')
grammar_stats.check('Hello, world')
grammar_stats.check('Hello, world')
grammar_stats.check('Hello, world')
p grammar_stats.percentage_good