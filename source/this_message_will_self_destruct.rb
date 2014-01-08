def destroy_message(string)
  # find the index of the colon
  # if it doesn't exist, don't do anything (just return string)
  #   if it does exist, return a substring
  #     to calc substring, slice 0 to index
  index = string.index(":")
  if index.nil?
    string
  else
    string[0..index]
  end
end

def destroy_message!(string)
  index = string.index(":")
  if index.nil?
    string
  else
    string.slice!((index+1)..string.length-1)
    string
  end
  nil
end

# Driver code...
string = "this message will self-destruct: you can't hug every cat"
original_string = string.dup
puts destroy_message(string) == "this message will self-destruct:"
puts string == original_string # we shouldn't modify the string passed to destroy_message

string = "this has no message"
original_string = string.dup
puts destroy_message(string) == string
puts string == original_string # we shouldn't modify the string passed to destroy_message

string = "this message will self-destruct: you can't hug every cat"
original_string = string.dup
destroy_message!(string)
puts string == "this message will self-destruct:"
puts string != original_string

string = "this has no message"
result = destroy_message!(string)
puts result.nil?
puts string == string