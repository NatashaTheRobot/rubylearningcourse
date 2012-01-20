=begin
  # The long way
  record = Hash.new
  record[:name] = “Satish”
  record[:email] = “mail@satishtalim.com”
  record[:phone] = “919371006659”
  Rewrite, the above code in one line, the DRY (or Ruby) way.
=end

record = Hash[:name, 'Satish', :email, 'mail@satishtalim.com', :phone, '919371006659']