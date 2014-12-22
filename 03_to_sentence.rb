# Write code that joins the elements of an array together and separates the last
# two elements by the word "and"
#
# You can use any methods you like on the input array
def to_sentence(array)
  result = ""
  counter = 0
  array_size = array.count
  array.each do |word|
    if counter < array_size-2
      result += "#{word}, "
      counter += 1
    elsif counter < array_size-1
      result += "#{word} "
      counter += 1
    else
      result += "and #{word}"
    end
  end
  result
end

require 'rspec'
require 'rspec/autorun'

RSpec.describe '#to_sentence' do

  it 'returns an empty string when given an empty array' do
    actual = to_sentence([])

    expect(actual).to eq("")
  end

  it 'returns string joined by commas with the last two words joined by the word "and"' do
    input = ['foo', 'bar', 'baz']
    expected = "foo, bar and baz"
    actual = to_sentence(input)

    expect(actual).to eq(expected)
  end

  it 'still works correctly with duplicate words' do
    input = ['bar', 'bar', 'bar']
    expected = "bar, bar and bar"
    actual = to_sentence(input)

    expect(actual).to eq(expected)
  end

  it 'works correctly when given numbers' do
    input = [1, 3, 5]
    expected = "1, 3 and 5"
    actual = to_sentence(input)

    expect(actual).to eq(expected)
  end

end
