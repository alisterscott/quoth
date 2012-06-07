# Quoth

A pseudo random quote of the day from wikiquotes.

Inspired by the [wikiquote gem](http://hemanth.github.com/wikiquote-gem/): I got sick of having to wait a whole day to get a new quote, so this gem will randomly pick one from the archives.

## Installation

Add this line to your application's Gemfile:

    gem 'quoth'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install quoth

## Usage

    $ quoth

    The time is always right to do what is right ~ Martin Luther King, Jr.

or

    $ irb
    >> require 'quoth'
    => true
    >> Quoth.get
    => "I like a huge range of comedy — from broad and farcical, the most sensitive, the most understated — but I always wanted my comedy to be more embracing of the species rather than debasing of it. ~ Lily Tomlin"
    >> Quoth.refresh_quotes
    => "Successfully refreshed quotes from http://en.wikiquote.org/wiki/Wikiquote:Quote_of_the_Day."

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request