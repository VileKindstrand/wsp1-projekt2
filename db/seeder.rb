require 'sqlite3'

class Seeder

  def self.seed!

    db.execute('DROP TABLE IF EXISTS todo;')

    db.execute('CREATE TABLE IF NOT EXISTS todo (
      id INTEGER PRIMARY KEY,
      name TEXT
    );')
  end

  def self.db
    return @db if @db
    @db = SQLite3::Database.new('db/todo.sqlite')
    @db.results_as_hash = true
    @db
  end

end

Seeder.seed!