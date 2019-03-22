require'pry'

def begins_with_r(words_array)
  words_array.each do |words|
      if words[0] == 'r'
        else
        return false
      end
  end
  return true
end

def contain_a(words_array)
  a_words = []
  words_array.each do |word|
    if word.include?('a')
      a_words << word
    end
  end
  return a_words
end

def first_wa(words_array)
  words_array.each do |word|
    if word[0..1].include?('wa')
      return word
    end
  end
end

def remove_non_strings(random_array)
  strings = []
  random_array.each do |item|
    if item.is_a?(String)
      strings << item
    else
      random_array.delete(item)
    end
  end
  return strings
end
#
def count_elements(array)
  result = []
  array.each do |key_pair|
    if name = result.detect{|x| x[:name] == key_pair[:name]}
        name[:count] += 1
    else
      key_pair[:count] = 1
      result << key_pair
      end
    end
    return result
end

# We have a hash with data titeld keys and we have a hash titled data
# We want to take our keys data and add it to our data hash
# First we should loop through our keys hash, determine if it's new key/value pair then push it into our new hash
# If we encounter the same key/pair we can skip that k/v pair and loop through the remainder of our hash
# Finally we want to return our new hash that we're created.
def merge_data(keys,data)
  new_array = []
  keys.each do |keys_hash|
    keys_hash.each do |key,value|
      data.each do |data_hash|
        data_hash.each do |data_name, data_hash_2|
          if data_name == value
                new_hash = keys_hash.merge(data_hash_2)
                new_array.push(new_hash)
          end
        end
      end
    end
  end
    return new_array
end

def find_cool(cool)
  coolness = []
  cool.each do |key_pairs|
    key_pairs.each do |key, value|
      if value == 'cool'
        coolness.push(key_pairs)
      end
    end
  end
  return coolness
end

def organize_schools(schools)
  nyc_schools = []
  organized_schools = {}
  schools.each do |school,school_data|
      school_data.each do |location, city|
        if city.include?("NYC")
          nyc_schools.push(school)
          organized_schools["NYC"] = nyc_schools
binding.pry
        elsif city == "SF"
          organized_schools["SF"] = [school]
        else city == "Chicago"
          organized_schools["Chicago"] = [school]
        end
      end
  end
  return organized_schools
end
