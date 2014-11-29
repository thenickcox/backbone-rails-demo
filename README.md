Backbone Rails Demo
================

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

This is the sample application for my blog post entitled "Adding Backbone to an Existing Rails App".

This application was generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem
provided by the [RailsApps Project](http://railsapps.github.io/).

Set Up (Mac OS X)
----------

1. `brew install postgres`
2. Install [Postgres.app](http://postgresapp.com/)
3. run `bundle install`
4. run `rake db:create db:migrate`
5. run `rake db:seed`
6. Profit!

The seed data contains a user with the following credentials:

```
email:    admin@test.com
password: passw0rd
```
Login as that user and check out the albums.

Problems? Issues?
-----------

If you have _any_ problems at all with the setup of the Rails app or the Backbone code, please [file an issue](https://github.com/thenickcox/backbone-rails-demo/issues).


Ruby on Rails
-------------

This application requires:

- Ruby 2.1.0
- Rails 4.1.0


License
-------
