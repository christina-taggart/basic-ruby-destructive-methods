def destroy_message(string)
  if string.include?(":")
    /(?<destroyed_string>.*:)/ =~ string
    destroyed_string
  else
    string
  end
end

def destroy_message!(string)
  #TODO: remove the message from string destructively!
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