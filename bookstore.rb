require './book'

class BookStorage
  attr_reader :books

  def initialize
    @books = load_books
  end

  def load_books
    return [] unless File.exist?('./data/books.json')

    data = File.read('./data/books.json')
    JSON.parse(data).map do |book|
      Book.new(book['title'], book['author'])
    end
  end

  

  def save
    File.write('data/books.json', JSON.generate(@books))
  end
end