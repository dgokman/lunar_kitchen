require 'pg'

class Recipe
  def self.all


  end

  def db_connection
    begin
    connection = PG.connect(dbname: 'recipes')

    yield(connection)

   ensure
    connection.close
   end
  end

end
