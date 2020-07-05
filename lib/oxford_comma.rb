require 'pry'

def oxford_comma(array)
  converted_string = ""
  if array.length == 1
    converted_string = array.join
  elsif array.length == 2
    converted_string = "#{array[0]} and #{array[1]}"
  else
    items_left = array.length
    until items_left == 1 do
      converted_string << "#{array[array.length - items_left]}, "
      items_left -= 1
    end
    converted_string << "and #{array.last}"
  end
  converted_string
end

