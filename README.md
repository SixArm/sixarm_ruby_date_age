# SixArm.com → Ruby → <br>Date age methods

<!--HEADER-OPEN-->

[![Code Climate](https://codeclimate.com/github/SixArm/sixarm_ruby_date_age.png)](https://codeclimate.com/github/SixArm/sixarm_ruby_date_age)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_date_age.png)](https://travis-ci.org/SixArm/sixarm_ruby_date_age)

* Git: <https://github.com/sixarm/sixarm_ruby_date_age>
* Doc: <http://sixarm.com/sixarm_ruby_date_age/doc>
* Gem: <https://rubygems.org/gems/sixarm_ruby_date_age>
* Contact: Joel Parker Henderson, <joel@sixarm.com>
* Changes: See CHANGES.md file.
* License: See LICENSE.md file.
* Helping: See CONTRIBUTING.md file.

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

To install using a Gemfile, add this:

    gem "sixarm_ruby_date_age", ">= 1.1.0", "< 2"

To install using the command line, run this:

    gem install sixarm_ruby_date_age -v ">= 1.1.0, < 2"

To install using the command line with high security, run this:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem && gem sources --add http://sixarm.com
    gem install sixarm_ruby_date_age -v ">= 1.1.0, < 2" --trust-policy HighSecurity

To require the gem in your code:

    require "sixarm_ruby_date_age"

<!--INSTALL-SHUT-->
