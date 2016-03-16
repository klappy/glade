# Parse Nestle Greek New Testament
#   https://raw.githubusercontent.com/biblicalhumanities/Nestle1904/master/Nestle1904.csv
# Parse Dodson Greek Lexicon
#   https://github.com/biblicalhumanities/Dodson-Greek-Lexicon/blob/master/dodson.csv

class LexiconParser
  require 'csv'
  require 'pry'
  require 'json'

  attr :lexicon, :lexicon_source, :words

  def initialize(params={})
    @lexicon_source = params[:lexicon_source] || "../sources/dodson-greek-lexicon/dodson-english.csv"
    @lexicon = {}
    @words = {}

    lexicon_parse(lexicon_source)
  end

  def lexicon_parse(url)
    CSV.new(open(url), col_sep: "\t", headers: :first_row).each do |record|
      strongs = record[0].gsub(/^0+/,'')
      lexicon[strongs] = { brief: record[3], long: record[4] }
    end
  end

  def lexicon_json
    JSON.pretty_generate(lexicon)
  end
end

gnt = LexiconParser.new()
puts gnt.lexicon_json
