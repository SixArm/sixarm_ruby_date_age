# SixArm.com » Ruby » <br>Date age methods

[![Code Climate](https://codeclimate.com/github/SixArm/sixarm_ruby_date_age.png)](https://codeclimate.com/github/SixArm/sixarm_ruby_date_age)

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

    a = Date.new(1980, 10, 31)
    b = Date.new(2011, 12, 31)

    a.age_in_days_on(b) => 11383
 
    a.age_in_years_on(b) => 31


## Install quickstart

Install:

    gem install sixarm_ruby_date_age

Bundler:

    gem "sixarm_ruby_date_age", "~>1.1.0"

Require:

    require "sixarm_ruby_date_age"


## Install with security (optional)

To enable high security for all our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_date_age --test --trust-policy HighSecurity


## Changes

* 2012-08-20 1.1.0 Add Code Climate
* 1.1.0 Add #age_in_days
* 1.0.0 Original


## License

You may choose any of these open source licenses:

  * Apache License
  * BSD License
  * CreativeCommons License, Non-commercial Share Alike
  * GNU General Public License Version 2 (GPL 2)
  * GNU Lesser General Public License (LGPL)
  * MIT License
  * Perl Artistic License
  * Ruby License

The software is provided "as is", without warranty of any kind, 
express or implied, including but not limited to the warranties of 
merchantability, fitness for a particular purpose and noninfringement. 

In no event shall the authors or copyright holders be liable for any 
claim, damages or other liability, whether in an action of contract, 
tort or otherwise, arising from, out of or in connection with the 
software or the use or other dealings in the software.

This license is for the included software that is created by SixArm;
some of the included software may have its own licenses, copyrights, 
authors, etc. and these do take precedence over the SixArm license.

Copyright (c) 2005-2012 Joel Parker Henderson
