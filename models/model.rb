def racismquiz(uservalue)
  if uservalue > 9
    return "reallyracist"
  elsif uservalue < 9 && uservalue > 5
    return "somewhatracist"
  elsif uservalue < 5
    return "notracist"
  end   
end 