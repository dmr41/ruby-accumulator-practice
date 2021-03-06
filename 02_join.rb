# Write code that will join every element in an array by a given delimiter
# Then make it so that if you don't pass a delimiter, it just concatenates them all together
#
# You can only use the `#each` method on the input array
def join(array, thing = "")
  result = ""

  array.each do |stuff|
    result += stuff + thing
  end

  if result[-1] == thing
    result = result.chop
  end
  result
end


require 'rspec'
require 'rspec/autorun'

RSpec.describe '#join' do

  it 'returns an empty string when given an empty array' do
    actual = join([], "|")

    expect(actual).to eq("")
  end

  it 'joins the elements in the array into a string, separated by the delimiter' do
    actual = join(["a", "b", "c"], "|")

    expect(actual).to eq("a|b|c")
  end

  it 'returns a string with all elements joined even when you do not pass a delimiter' do
    actual = join(["a", "b", "c"])

    expect(actual).to eq("abc")
  end

end
