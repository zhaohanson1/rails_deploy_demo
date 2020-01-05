# CodeClimate

#### Maintainability

[![Maintainability](https://api.codeclimate.com/v1/badges/fb770edaa0006818fe68/maintainability)](https://codeclimate.com/github/zhaohanson1/rails_deploy_demo/maintainability)

#### Test Coverage

[![Test Coverage](https://api.codeclimate.com/v1/badges/fb770edaa0006818fe68/test_coverage)](https://codeclimate.com/github/zhaohanson1/rails_deploy_demo/test_coverage)

# TravisCI

#### Build Status
[![Build Status](https://travis-ci.com/zhaohanson1/rails_deploy_demo.svg?branch=master)](https://travis-ci.com/zhaohanson1/rails_deploy_demo)


## Reproducing this Repo

Setting up AWS C9 environment: https://github.com/saasbook/courseware/wiki/Setting-up-Cloud9

SaaS book: 
  * Chapter 4: Introduction to Rails
  * Chapter 5: Advanced Rails
  * Chapter 8: Test-Driven Development

CodeClimate: https://docs.codeclimate.com/

Test Suites: 
```
rails generate rspec:install
rails generate cucumber:install
rails generate cucumber_rails_training_wheels:install
rails generate jasmine_rails:install
```

Guard: http://saasbook.github.io/courseware/rspec/guard.html

SimpleCov:
```
# at TOP of spec/rails_helper.rb:
require 'simplecov'
SimpleCov.start
```

Heroku: https://devcenter.heroku.com/articles/getting-started-with-ruby
* Migration: ```heroku run rake db:migrate```
* Seed: ```heroku run rake db:seed```

Figaro: 
* http://saasbook.github.io/courseware/devops/storing-sensitive-data.html
* https://github.com/laserlemon/figaro

TravisCI: http://saasbook.github.io/courseware/devops/travis-ci-setup.html
