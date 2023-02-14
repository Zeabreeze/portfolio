#!/usr/bin/ruby

puts("hello")
puts("hi there")

value = "blah"

items = [1,2,3,5,26,13,14]

puts("the value is " + value)

for item in items   
        puts(item)
end

items.each do | item |
    puts(item)
end

for i in 0.step(6)
    puts(items[i])
end

items.each { | item | puts(item) }

puts{items}
