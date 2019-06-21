require "./src/KeepAlive"

file_writes = KeepAlive.new ["/mnt/f/KeepAwake", "/mnt/j/KeepAwake"]
loop do
  file_writes.write_file
  puts "Wrote Files..."
  sleep(10)
end
