# Battle! #

## Where two players fight to a digital death  ##

 A simple game to show an implementation of web-app development.

### User Stories ###

 Check userstories.md for an overview of the project requirements.

### Getting Started#

run ```$ rackup``` and navigate to ```localhost:9292``` in your browser

### Prerequisites

All prerequisites are available by running the command ```$ bundle```.

You will need to run the command ```$ gem install bundle``` if you don't have bundle already installed.

### Structure ###
    .
    ├── Gemfile
    ├── Gemfile.lock
    ├── README.md
    ├── app.rb
    ├── config.ru
    ├── lib
    │   ├── game.rb
    │   └── player.rb
    ├── spec
    │   ├── features
    │   │   ├── attack_spec.rb
    │   │   ├── enter_names_spec.rb
    │   │   ├── game_spec.rb
    │   │   └── web_helpers.rb
    │   ├── game_spec.rb
    │   ├── player_spec.rb
    │   └── spec_helper.rb
    ├── user_stories.md
    └── views
    ├── attack.erb
    ├── game_over.erb
    ├── index.erb
    └── play.erb

### Development Methodology

This program was built and tested using Test Driven Development

* [Ruby](https://www.ruby-lang.org) - The language used to develop this program - v2.4.0p0 (2016-12-24 revision 57164)
* [Rspec](http://rspec.info) - The testing framework used to drive development - v3.5.4
* [Capybara](http://teamcapybara.github.io/capybara/) - The library used to test & simulate interactions with the web-app.
* [Sinatra](http://www.sinatrarb.com/) - The DSL used to create this web-app.
