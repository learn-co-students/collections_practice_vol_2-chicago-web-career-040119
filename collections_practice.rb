require "pry"

def begins_with_r(array)
  yea_o_nea = true
  array.each { |el|
    zplit = el.split("")
    if zplit[0] != "r"
      puts false
      return false
    else
      next
    end
  }
  puts yea_o_nea
  yea_o_nea
end

def contain_a(array)
  new_array = []
  array.each { |el|
    zplit = el.split("")
    zplit.each {|letter|
      if letter == "a"
        new_array << el
      else
        next
      end
    }
  }
  puts new_array
  new_array
end

def first_wa(array)
  array.each { |el|
    if el == el.to_sym
      next
    else
      zplit = el.split("")
      two_letters = zplit[0] + zplit[1]
      if two_letters == "wa"
        puts el
        return el
      else
        next
      end
    end
  }
end

def remove_non_strings(array)
  new_array = []
  array.each {|el|
    if el == el.to_s
      new_array << el
    else
      next
    end
  }
  new_array
end

def count_elements(array)
  new_array = []
  array.each {|el|
    #binding.pry
    if new_array == []
      new_array << {el.keys[0] => el.values[0], :count => 1}
      #binding.pry
      #next
    else
      new_array.each {|nel|
        #binding.pry
        if nel.values[0] == el.values[0]
          nel[:count] += 1
          #next
        elsif nel.values[0] != el.values[0]
          new_array << {el.keys[0] => el.values[0], :count => 0}
          #next
        else
          next
        end
      }
    end
  }
  #binding.pry
  new_array
end

keyz = [
    {
        :first_name => "blake",
             :motto => "Have a koala-ty day!"
    },
    {
        :first_name => "ashley",
             :motto => "I dub thee, 'Lady Brett Ashley'."
    }
]

dataz = [
       {
         "blake" => {
            :awesomeness => 10,
                 :height => "74",
              :last_name => "johnson"
        },
        "ashley" => {
            :awesomeness => 9,
                 :height => 60,
              :last_name => "dubs"
        }
    }
]

def merge_data(hsh_one, hsh_two)
  #binding.pry
  merge1 = hsh_one[0].merge(hsh_two[0]["blake"])
  addback = merge1.delete(:motto)
  merge1[:motto] = addback
  merge2 = hsh_one[1].merge(hsh_two[0]["ashley"])
  addback2 = merge2.delete(:motto)
  merge2[:motto] = addback2
  all_merged = [merge1, merge2]
  #binding.pry
  return all_merged
end

merge_data(keyz, dataz)
#merge_data(skeys, sdata)

my_cool = [
                {
                       :name => "ashley",
                :temperature => "sort of cool"
            },
                {
                       :name => "blake",
                :temperature => "cool"
            }
          ]

def find_cool(arr)
  arr.each {|el|
    #binding.pry
    if el[:temperature] == "cool"
      output = []
      output << el
      return output
    else
      next
    end
  }
end

schoolz = {
  "flatiron school bk" => {
    :location => "NYC"
  },
  "flatiron school" => {
    :location => "NYC"
  },
  "dev boot camp" => {
    :location => "SF"
  },
  "dev boot camp chicago" => {
    :location => "Chicago"
  },
  "general assembly" => {
    :location => "NYC"
  },
  "Hack Reactor" => {
    :location => "SF"
  }
}

def organize_schools(hsh)
  locations = {
    "NYC" => [],
    "SF" => [],
    "Chicago" => []
  }
  hsh.each {|keyz, valz|

    case valz[:location]
      when "NYC"
        locations["NYC"] << keyz
      when "SF"
        locations["SF"] << keyz
      when "Chicago"
        locations["Chicago"] << keyz
    end
  }
  locations
end

#organize_schools(schoolz)
