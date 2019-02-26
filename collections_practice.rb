def begins_with_r(arr)
  other_than_r = arr.any? do |word|
    word[0] != "r"
  end
  other_than_r ? false : true
end

def contain_a(arr)
  arr.select do |element|
    element.include?("a")
  end
end

def first_wa(arr)
  arr.find do |word|
    word[0] == "w" && word[1] == "a"
  end
end

def remove_non_strings(arr)
  arr.keep_if do |element|
    element.is_a?(String)
  end
end

def count_elements(arr)
  return_arr = []
  values = arr.map do |element|
    element.values
  end
  for name in values do
   return_arr.push(name:name[0], count:values.count(name))
  end
  return_arr.uniq
end

def merge_data(hash1, hash2)
  output = []
  output.push(hash1[0].merge(hash2[0]["blake"]))
  output.push(hash1[1].merge(hash2[0]["ashley"]))
  output
end

def find_cool(hash)
  return_arr = []
  hash.select do |item|
    item.each_value do |value|
      if value == "cool"
        return_arr.push(item)
      end
    end
  end
  return_arr
end

#Found this solution on stackoverflow, but need clarification for why/how it works.  Found at: https://stackoverflow.com/questions/37448228/how-to-organize-hashes-by-property
def organize_schools(hash)
  hash.each_with_object({}) do |(name, data), res|
  (res[data[:location]] ||= []) << name
  end
end
