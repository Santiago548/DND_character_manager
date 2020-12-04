require 'dotenv'
Dotenv.load

require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection({
  adapter: 'sqlite3',
  database: 'db/development.sqlite'
})

require './app/controllers/application_controller'
require_all 'app'
