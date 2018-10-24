# Q0: Why are these two errors being thrown?

Because there is no Pokemon class that has been created yet

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

There's an index function in the home controller where trainerless_pokemon = Pokemon.where(trainer: nil) @pokemon = trainerless_pokemon.sample. The variable @pokemon is being randomized using the sample function and the common factor is that all the pokemon are currently trainerless as in trainer:nil because they have just been put into the database with a seed.db file.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

This creates a button saying "Throw a Pokeball", which has a link to the capture method that we made in routes.rb. It patches a request and calls the method capture and passes in the ID of the current pokemon that has been selected.

# Question 3: What would you name your own Pokemon?

Peekachew

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

In the redirect_to, I passed trainer_path(id: current_trainer). This passes the trainer's path with the trainer's specific ID.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

This passes a hash to the next action - this allows the error message to be exposed to the next action before clearing it out. As a result, it gets displayed in applicaton.html.erb when a message is being rendered since the display action is exposed to the template. 

# Give us feedback on the project and decal below!

So far so good! I liked this project and the pokemon reference.

Link to github repo: https://github.com/daphnejong/proj1

# Extra credit: Link your Heroku deployed app
