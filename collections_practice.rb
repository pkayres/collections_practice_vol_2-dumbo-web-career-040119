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
  merged_hash = []
  keys.each do |keys_hash|
    name_key = keys_hash[:first_name]
    motto_key = keys_hash[:motto]
      data.each do |data_hash|
        data_hash.each do |data_name, data_hash_2|
          if data_name == name_key
            new_name = {keys_hash.key(name_key) => name_key}
            new_motto = {keys_hash.key(motto_key)=> motto_key}
            merged_hash << new_name.merge(data_hash_2)
binding.pry
          end
        end
      end
    end
    return merged_hash
  end 
end
