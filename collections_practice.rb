# your code goes here
def begins_with_r(arr)
  !arr.any? do |ele|
    !ele.start_with?("r")
  end
end

def contain_a(arr)
  arr.select do |ele|
    ele.include?("a")
  end
end

def first_wa(arr)
  arr.find do |ele|
    ele = ele.is_a?(String) ? ele : ele.inspect
    ele.start_with?("wa")
  end
end

def remove_non_strings(arr)
  arr.select do |ele|
    ele.is_a? String
  end
end

def count_elements(arr)
  temp = arr.uniq
  out = []
  for a in temp do
    a[:count] = arr.select {|ele| a == ele}.length
    out << a
  end
  out
end

def merge_data(arr1, arr2)
  out = []
  arr1.each do |key|
    val = arr2.find {|ele| ele.has_key?(key[:first_name]) }
    
    out << key.merge(val[key[:first_name]])
  end
  out
end
    
def find_cool(arr)
  arr.select do |ele|
    ele.has_value?("cool")
  end
end
    
def organize_schools(hash)
  locations = hash.values.uniq
  out = {}
  
  for local in locations do
    out[local[:location]] = hash.select do |_, ele|
      ele[:location] == local[:location]
    end.keys
  end
  out
end
    
def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end













