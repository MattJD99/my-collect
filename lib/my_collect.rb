require 'pry'
def my_collect(array)
    i = 0
    result = []
    while i < array.length
      result.push(yield array[i])
        i += 1
    end
    result
  end
  
  array = ["ruby", "javascript", "python", "objective-c"]
my_collect(array) do |lang|
    lang.upcase
end

  array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
  my_collect(array) do |name|
    name.split(" ").first
  end