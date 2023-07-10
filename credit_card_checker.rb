# it has 16 numbers
def credit_card_checker(number) # string
  #delete unwanted spaces
  number.gsub!(" ", "")
  #find a regex for filtering digits
  # regex = /^\d{16}$/
  regex = /^(\d)\d{15}$/
  
  # group the first number in the regex
  # use .match to get match data
  match_data = number.match(regex) # match data object or nil
  # p match_data[1]
  
  # refactor if statement to check if the first number 4 or 5
  if match_data && match_data[1] == "4"
    return "Valid Visa credit card number"
  elsif match_data && match_data[1] == "5"
    return "Valid Mastercard credit card number"
  else
    return "Invalid credit card number"
  end
  
  #match the string with the regex
  #return "Invalid credit card number" or "Valid credit card number"
  # if number.match?(regex)
  # return "Valid credit card number"
  # else 
  #   return "Invalid credit card number"
  # end

  # number.match?(regex) ? "Valid credit card number" : "Invalid credit card number"
end
