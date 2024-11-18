require 'sqlite3'

class Seeder

  def self.seed!

    db.execute('DROP TABLE IF EXISTS todo;')

    db.execute('CREATE TABLE IF NOT EXISTS todo (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT,
      description TEXT,
      priority FLOAT
    );')

    db.execute('INSERT INTO todo (name, description, priority) VALUES ("alfons åberg - den vises sten", "gandalf och garfield slåss i åtta tvåminutersrundor", 9.3)')
    db.execute('INSERT INTO todo (name, description, priority) VALUES ("1884", "uppfinnandet av hjulet orsakar en kalokainepedemi som tvingar Lars att mysa med råttor", 4.2)')
    db.execute('INSERT INTO todo (name, description, priority) VALUES ("pippi långa strumpor", "stark ginger", 7.0)')

  end

  def self.populate_tables

  end

  def self.db
    return @db if @db
    @db = SQLite3::Database.new('db/todo.sqlite')
    @db.results_as_hash = true
    @db
  end

end

Seeder.seed!