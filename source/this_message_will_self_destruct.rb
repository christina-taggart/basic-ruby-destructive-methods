def destroy_message(string)
  return string unless string.include?(":")
  string.split(":").first + ":"
end

def destroy_message!(string)
   string.include?(":") ? string.replace(string.split(":").first + ":") : nil
end

# Driver code..
#destroy_message("This message will destruct: blah blah blah")
string = "this message will self-destruct: you can't hug every cat"
original_string = string.dup
puts destroy_message(string) == "this message will self-destruct:"
puts string == original_string # we shouldn't modify the string passed to destroy_message

string = "this has no message"
original_string = string.dup
destroy_message(string) == string
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