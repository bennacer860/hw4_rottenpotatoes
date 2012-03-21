# Add a declarative step here for populating the DB with movies.

Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|   
    #puts movie.inspect
    Movie.create!(movie)
  end
end


Then /^the director of "([^"]*)" should be "([^"]*)"$/ do |arg1, arg2|
	#find movie
	movie=Movie.find_by_title(arg1)
	#compare the director 
	assert movie.director==arg2
end
