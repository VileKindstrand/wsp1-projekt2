require 'sqlite3'

class Seeder

  def self.seed!
    ####################todo######################
    db.execute('DROP TABLE IF EXISTS todo;')
    db.execute('CREATE TABLE IF NOT EXISTS todo (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT,
      description TEXT,
      priority FLOAT)')
    db.execute('INSERT INTO todo (name, description, priority) VALUES ("alfons åberg - den vises sten", "gandalf och garfield slåss i åtta tvåminutersrundor", 9.3)')
    db.execute('INSERT INTO todo (name, description, priority) VALUES ("1884", "uppfinnandet av hjulet orsakar en kalokainepedemi som tvingar Lars att mysa med råttor", 4.2)')
    db.execute('INSERT INTO todo (name, description, priority) VALUES ("pippi långa strumpor", "stark ginger", 7.0)')
    ##################rate#####################
    db.execute('DROP TABLE IF EXISTS rate;')
    p "doh"
    db.execute('CREATE TABLE IF NOT EXISTS rate (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT,
      description TEXT,
      rating FLOAT,
      comment TEXT)')
    db.execute('INSERT INTO rate (name, description, rating, comment) VALUES ("alfons åberg - den vises sten", "gandalf och garfield slåss i åtta tvåminutersrundor", 4, "den var mid")')
    db.execute('INSERT INTO rate (name, description, rating, comment) VALUES ("1884", "uppfinnandet av hjulet orsakar en kalokainepedemi som tvingar Lars att mysa med råttor", 6, "klassiker - men overrated")')
    db.execute('INSERT INTO rate (name, description, rating, comment) VALUES ("pippi långa strumpor", "stark ginger", 7, "klassiker - men förståeligt så")')

  end


  def self.db
    return @db if @db
    @db = SQLite3::Database.new('db/todo.sqlite')
    @db.results_as_hash = true
    @db
  end

end
