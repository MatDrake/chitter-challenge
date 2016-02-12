require 'data_mapper'
require 'dm-postgres-adapter'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/chitter_#{ENV['RACK_ENV']}")

require_relative 'models/user.rb'

DataMapper.finalize
DataMapper.auto_upgrade!
