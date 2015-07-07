# Ruby » <br>Date age methods

[![Code Climate](https://codeclimate.com/github/SixArm/sixarm_ruby_date_age.png)](https://codeclimate.com/github/SixArm/sixarm_ruby_date_age)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_date_age.png)](https://travis-ci.org/SixArm/sixarm_ruby_date_age)

* Doc: <http://sixarm.com/sixarm_ruby_date_age/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_date_age>
* Repo: <http://github.com/sixarm/sixarm_ruby_date_age>
* Email: Joel Parker Henderson, <joel@sixarm.com>

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


## Install quickstart

Install:

    gem install sixarm_ruby_date_age

Bundler:

    gem "sixarm_ruby_date_age", "~>1.1.2"

Require:

    require "sixarm_ruby_date_age"


## Install with security (optional)

To enable high security for all our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_date_age --trust-policy HighSecurity


## Changes

* 2012-08-20 1.1.2 Upgrade #age_in_years to handle negative years
* 2012-08-19 1.1.1 Move to Minitest Spec
* 1.1.0 Add #age_in_days
* 1.0.0 Original
