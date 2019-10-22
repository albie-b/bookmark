require 'pg'

# class Bookmark
#   def self.all
#     connection = PG.connect(dbname: 'bookmark_manager')
#   end
# end
class Bookmark
  def self.all
    if ENV['ENVIROMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    result = connection.exec 'SELECT * FROM bookmarks;'
    result.map{|bookmark| bookmark['url']}
  end
  def self.create(url:)
    if ENV['ENVIROMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
  end

end