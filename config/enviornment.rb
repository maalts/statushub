require 'bundler'

Bundler.require

Dotenv.load

configure :development do
  set :database, "sqlite3:db/database.db"
end

configure :production do
	ActiveRecord::Base.establish_connection(ENV["DATABASE_URL"])
end