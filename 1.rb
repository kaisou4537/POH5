message = gets
count = 0
message.chars do |c|
  print count % 2 != 0 ? "" : c
  count += 1
end
