$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'random-wikiquote'

describe RandomWikiQuote do
  it 'returns a quote' do
    RandomWikiQuote.get_first.should == '11. I have a dream that my four little children will one day live in a nation where they will not be judged by the color of their skin but by the content of their character. ~ Martin Luther King (This was the first "Quote of the Day" at Wikiquote, selected by Nanobug on 11 July 2003.)'
  end
end