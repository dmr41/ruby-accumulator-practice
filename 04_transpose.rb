# Write code that can transpose an array of arrays into another array of arrays
#
# You can use any methods you like on the input array except `#transpose`
def transpose(array)
  result = []
  number = array.count
  if array.empty?
    single_array = array
  else
    single_array = [array[0]]
  end
  single_array.each do |val|
    val.each do |v|
      new_array = []
      number.times do
        new_array << v
      end
      result << new_array
    end
  end
  result
end

# result = []
# item_counter = array[0].count - 1
#
# array.each do |inner_array|
#   inner_array.each do |value|
#     pvalue
#   end
# end




require 'rspec'
require 'rspec/autorun'

RSpec.describe '#transpose' do

  it 'returns an empty array when given an empty array' do
    actual = transpose([])

    expect(actual).to eq([])
  end

  it 'returns string joined by commas with the last two words joined by the word "and"' do
    input = [
      ['top', 'middle', 'bottom'],
      ['top', 'middle', 'bottom'],
      ['top', 'middle', 'bottom'],
    ]
    expected = [
      ['top', 'top', 'top'],
      ['middle', 'middle', 'middle'],
      ['bottom', 'bottom', 'bottom'],
    ]
    actual = transpose(input)

    expect(actual).to eq(expected)
  end

end
