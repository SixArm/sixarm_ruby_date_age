# SixArm.com → Ruby → <br>Date age methods

<!--HEADER-OPEN-->

[![Gem Version](https://badge.fury.io/rb/sixarm_ruby_date_age.svg)](http://badge.fury.io/rb/sixarm_ruby_date_age)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_date_age.png)](https://travis-ci.org/SixArm/sixarm_ruby_date_age)
[![Code Climate](https://codeclimate.com/github/SixArm/sixarm_ruby_date_age.png)](https://codeclimate.com/github/SixArm/sixarm_ruby_date_age)
[![Coverage Status](https://coveralls.io/repos/SixArm/sixarm_ruby_date_age/badge.svg?branch=master&service=github)](https://coveralls.io/github/SixArm/sixarm_ruby_date_age?branch=master)

* Git: <https://github.com/sixarm/sixarm_ruby_date_age>
* Doc: <http://sixarm.com/sixarm_ruby_date_age/doc>
* Gem: <https://rubygems.org/gems/sixarm_ruby_date_age>
* Contact: Joel Parker Henderson, <joel@sixarm.com>
* Project: [Changes](CHANGES.md), [License](LICENSE.md), [Contributing](CONTRIBUTING.md).

<!--HEADER-SHUT-->

## Introduction

Date extensions to calculate an age in days and years.

Example:

    date = Date.today - 400

    date.age_in_years #=> 1

    date.age_in_days #=> 400 


Example of custom dates:

    a = Date.new(2000, 10, 31)
    b = Date.new(2011, 12, 31)

    a.age_in_days_on(b) => 4078
 
    a.age_in_years_on(b) => 11


<!--INSTALL-OPEN-->

## Install

### Gem

Run this command in your shell or terminal:

    gem install sixarm_ruby_date_age

Or add this to your Gemfile:

    gem 'sixarm_ruby_date_age'

### Require

To require the gem in your code:

    require 'sixarm_ruby_date_age'

<!--INSTALL-SHUT-->
