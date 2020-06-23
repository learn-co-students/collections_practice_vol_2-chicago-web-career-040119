#'Return true if every element of the tools array
#starts with an "r" and false otherwise.
def begins_with_r(array)
    array.all? do |word|
    word[0] == "r"
  end
end

#return all elements that contain the letter 'a' (filter)
def contain_a(array)
  array.select do |word|
  word.include?("a")
end
end

#Return the first element that begins
#with the letters 'wa'
def first_wa(array)
  array.find do |word|
  word[0,2] == "wa"
end
end

# remove anything that's not
# a string from an array
def remove_non_strings(array)
  array.delete_if do |word|
    word.is_a?(String) == false
end
end

#count how many times
#something appears in an array
def count_elements(array)
  array.count do |word|

end

#combines two nested data structures into one
def merge_data(array)

end

#find all cool hashes
def find_cool(array)

end

#organizes the schools by location
def organize_schools(array)

end
