require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end
  # describe '.add' do
  #   it 'adds a new bookmark'
  #     bookmark = 'https://.add-testing.co.uk'
  #     bookmarks = Bookmark.add(bookmark)
  #     expect(bookmarks.all).to include(bookmark)
  #   end
  #end

end
