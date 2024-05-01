require "sinatra"
require "sinatra/reloader"

get("/") do
  "<h1>Dice Roll</h1>
  <p><a href= https://solid-space-memory-9jqpvv557jjhpwxr-4567.app.github.dev/dice/2/6>Roll two six-sided dice</a></p>
  <p><a href= https://solid-space-memory-9jqpvv557jjhpwxr-4567.app.github.dev/dice/2/10>Roll two ten-sided dice</a></p>
  <p><a href= https://solid-space-memory-9jqpvv557jjhpwxr-4567.app.github.dev/dice/1/20>Roll one twenty-sided die</a></p>
  <p><a href= https://solid-space-memory-9jqpvv557jjhpwxr-4567.app.github.dev/dice/5/4>Roll five four-sided dice</a></p>"
end

get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die
	
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  "<h1>2d6</h1>
   <p>#{outcome}</p>"
end

get("/dice/2/10") do
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die

  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."

  "<h1>2d10</h1>
  <p>#{outcome}</p>"
end

get("/dice/1/20") do
  first_die = rand(1..20)

  outcome = "You rolled a #{first_die}."

  "<h1>1d20</h1>
  <p>#{outcome}</p>"
end

get("/dice/5/4") do
  first = rand(1..4)
  second = rand(1..4)
  third = rand(1..4)
  fourth = rand(1..4)
  fifth = rand(1..4)
  sum = first + second + third + fourth + fifth

  outcome = "You rolled a #{first}, a #{second}, a #{third}, a #{fourth}, and a #{fifth} for a total of #{sum}."

  "<h1>5d4</h1>
  <p>#{outcome}</p>"
end
