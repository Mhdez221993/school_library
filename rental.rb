class Rental
  attr_accessor :date, :book, :person

  def initialize(date, person, book)
    @date = date

    @person = person
    person.rentals << self

    @book = book
    book.rentals << self
  end

  def to_s
    "Date: #{@date}, Book: #{@book.title}, by #{book.author}"
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'date' => @date,
      'book' => @book.title,
      'person' => @person.id
    }.to_json(*args)
  end
end
