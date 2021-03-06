# IGDB: Internet Game Database
[![Circle CI](https://circleci.com/gh/ahmetabdi/igdb.svg?style=svg)](https://circleci.com/gh/ahmetabdi/igdb)
[![Build Status](https://travis-ci.org/ahmetabdi/igdb.svg)](https://travis-ci.org/ahmetabdi/igdb)
[![Code Climate](https://codeclimate.com/github/ahmetabdi/igdb/badges/gpa.svg)](https://codeclimate.com/github/ahmetabdi/igdb)
[![Test Coverage](https://codeclimate.com/github/ahmetabdi/igdb/badges/coverage.svg)](https://codeclimate.com/github/ahmetabdi/igdb/coverage)
[![Gem Version](https://badge.fury.io/rb/igdb.svg)](http://badge.fury.io/rb/igdb)
[![Dependency Status](https://gemnasium.com/ahmetabdi/igdb.svg)](https://gemnasium.com/ahmetabdi/igdb)

<img src="banner.png">

## Installation
```ruby
$ gem install igdb
```
## Usage

##### Connect
```ruby
$ Igdb.connect('api_key')
```
##### Game
  Find game by ID
```ruby
$ Igdb::Game.find(1971)
```
  Search for a game
```ruby
$ Igdb::Game.search(query: 'batman')
```
  Return the number of games in the database
```ruby
$ Igdb::Game.meta
```
  Return a list of all games with an offset and/or limit
```ruby
$ Igdb::Game.all
$ Igdb::Game.all(limit: 10) # Limit to 10 results - Default 100
$ Igdb::Game.all(offset: 5) # Offset result starting at 5th - Default 0
```
##### Person
  Find person by ID or name
```ruby
$ Igdb::Person.find(4)
$ Igdb::Person.find('derek-watts')
```
  Return the number of people in the database
```ruby
$ Igdb::Person.meta
```
  Return a list of all games with an offset and/or limit
```ruby
$ Igdb::Person.all
$ Igdb::Person.all(limit: 10) # Limit to 10 results - Default 100
$ Igdb::Person.all(offset: 5) # Offset result starting at 5th - Default 0
```
##### Company
  Find company by ID or name
```ruby
$ Igdb::Company.find(70)
$ Igdb::Company.find('nintendo')
```
  Return the number of companies in the database.
```ruby
$ Igdb::Company.meta
```
  Return the games for a company
```ruby
$ Igdb::Company.find('2000').games
```
## Contributing

1. Fork it ( https://github.com/ahmetabdi/igdb/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
