require 'date'
require_relative '../rental'

describe Rental do
  date = DateTime.now

  it('Shoud chec if Rental is instance of Rental') do
    person = double('person')
    book = double('book')
    allow(person).to receive(:rentals) { [] }
    allow(book).to receive(:rentals) { [] }
    rental = Rental.new(date, person, book)
    expect(rental).to be_instance_of(Rental)
  end
end
