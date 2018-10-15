require 'socket'

server = TCPServer.new(2345)
socket = server.accept
loop do
  socket.puts "What do you say?"
  they_said = socket.gets.chomp
  socket.puts "You said #{they_said}. Goodbye"
if they_said == 'quit'
break
end
end 
socket.close
