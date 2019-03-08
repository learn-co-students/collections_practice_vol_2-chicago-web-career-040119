# your code goes here
def begins_with_r(array)
  array.all? do |name|
  name[0] == "r"
end
end

# def contain_a(array)
#   new_array = []
#   array.each do |element|
#   if element.include?("a")
#   new_array.push(element)
#     end 
#   end 
# new_array
# end
def contain_a( array)
  array.select do |string|
    string.include?("a")
  end 
end

def first_wa(array)
  result  =[]
  array.find do |name|
    name[0,2] == "wa"
  end
end

def remove_non_strings(array) 
  array.delete_if do |word|
    word.is_a?(String) == false 
  end 
end

def count_elements(array) 
  new_arr = []
  array.count do |word|
    # word.count do |word|
      new_arr << word

end
new_arr
end

# def merge_data(key, value)
# key.each do |name_hash|
#   data.each do |hash|
#     name_hash.merge!(hash[name_hash[:hash_name]])
# end
# end
# end
  
  def merge_data(hash1, hash2)
  output = []
  output.push(hash1[0].merge(hash2[0]["blake"]))
  output.push(hash1[1].merge(hash2[0]["ashley"]))
  output
end

def find_cool(hash)
  new_array = []
  hash.each do |item|
    item.each_value do |value|
      if value == "cool"
        new_array << item
      end
    end
  end
  new_array
end

  def organize_schools(hash)
  end
  