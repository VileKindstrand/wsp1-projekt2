class App < Sinatra::Base

    def db
        return @db if @db

        @db = SQLite3::Database.new("db/items.sqlite")
        @db.results_as_hash = true

        return @db
    end

    get '/' do
        erb(:"/index")
    end
    get '/views/new' do
        erb(:"/index")
      end
    
    

end
