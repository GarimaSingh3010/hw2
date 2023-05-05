# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
movies.destroy_all
studios.destroy_all
actors.destroy_all
movie_casting.destroy_all

# Generate models and tables, according to the domain model.

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
Movie.destroy_all

new_movie= Movie.new
new_movie["title"]="Batman_Begins"
new_movie["year_released"]="2005"
new_movie["mpaa_rating"]="PG-13"
new_movie["studio_id"]="1"
new_movie.save
      
new_movie_2=Movie.new
new_movie_2["title"]="The_Dark_Knight"
new_movie_2["year_released"]="2008"
new_movie_2["mpaa_rating"]="PG-13"
new_movie_2["studio_id"]="1"
new_movie_2.save
      
new_movie_3=Movie.new
new_movie_3["title"]="The_Dark_Knight_Rises"
new_movie_3["year_released"]="2012"
new_movie_3["mpaa_rating"]="PG-13"
new_movie_3["studio_id"]="1"     
new_movie_3.save     

studio.destroy_all

new_studio= Studio.new
new_studio["studio_id"]="1"
new_studio["studio_name"]="Warner_Bros"
new_studio.save

actor.destroy_all

new_actor=Actor.new
new_actor["actor_id"]="1"
new_actor["actor_name"]="Christian_Bale"
new_actor.save

new_actor_2=Actor.new
new_actor_2["actor_id"]="2"
new_actor_2["actor_name"]="Michael_Caine"
new_actor_2.save

new_actor_3=Actor.new
new_actor_3["actor_id"]="3"
new_actor_3["actor_name"]="Liam_Neeson"
new_actor_3.save

new_actor_4=Actor.new
new_actor_4["actor_id"]="4"
new_actor_4["actor_name"]="Katie_Holmes"
new_actor_4.save

new_actor_5=Actor.new
new_actor_5["actor_id"]="5"
new_actor_5["actor_name"]="Gary_Oldman"
new_actor_5.save

new_actor_6=Actor.new
new_actor_6["actor_id"]="6"
new_actor_6["actor_name"]="Heath_Ledger"
new_actor_6.save

new_actor_7=Actor.new
new_actor_7["actor_id"]="7"
new_actor_7["actor_name"]="Aaron_Eckhart"
new_actor_7.save

new_actor_8=Actor.new
new_actor_8["actor_id"]="8"
new_actor_8["actor_name"]="Maggie_Gyllanhaal"
new_actor_8.save

new_actor_9=Actor.new
new_actor_9["actor_id"]="9"
new_actor_9["actor_name"]="Tom_Hardy"
new_actor_9.save

new_actor_10=Actor.new
new_actor_10["actor_id"]="10"
new_actor_10["actor_name"]="Tom_Hardy"
new_actor_10.save

new_actor_11=Actor.new
new_actor_11["actor_id"]="11"
new_actor_11["actor_name"]="Joseph Gordon-Levitt"
new_actor_11.save

new_actor_12=Actor.new
new_actor_12["actor_id"]="12"
new_actor_12["actor_name"]="Anne Hathaway"
new_actor_12.save

movie_casting.destroy_all

new_movie_casting=Movie_casting.new
new_movie_casting["movie_id"]="1"
new_movie_casting["actor_id"]="1"
new_movie_casting["character_name"]="Bruce Wayne"
new_movie_casting.save

new_movie_casting_2=Movie_casting.new
new_movie_casting_2["movie_id"]="1"
new_movie_casting_2["actor_id"]="2"
new_movie_casting_2["character_name"]="Alfred"
new_movie_casting_2.save

new_movie_casting_3=Movie_casting.new
new_movie_casting_3["movie_id"]="1"
new_movie_casting_3["actor_id"]="3"
new_movie_casting_3["character_name"]="Ra's Al Ghul"
new_movie_casting_3.save

new_movie_casting_4=Movie_casting.new
new_movie_casting_4["movie_id"]="1"
new_movie_casting_4["actor_id"]="4"
new_movie_casting_4["character_name"]="Rachel Dawes"
new_movie_casting_4.save

new_movie_casting_5=Movie_casting.new
new_movie_casting_5["movie_id"]="1"
new_movie_casting_5["actor_id"]="5"
new_movie_casting_5["character_name"]="Commissioner Gordon"
new_movie_casting_5.save

new_movie_casting_6=Movie_casting.new
new_movie_casting_6["movie_id"]="2"
new_movie_casting_6["actor_id"]="1"
new_movie_casting_6["character_name"]="Bruce Wayne"
new_movie_casting_6.save

new_movie_casting_7=Movie_casting.new
new_movie_casting_7["movie_id"]="2"
new_movie_casting_7["actor_id"]="6"
new_movie_casting_7["character_name"]="Joker"
new_movie_casting_7.save

new_movie_casting_8=Movie_casting.new
new_movie_casting_8["movie_id"]="2"
new_movie_casting_8["actor_id"]="7"
new_movie_casting_8["character_name"]="Harvey Dent"
new_movie_casting_8.save

new_movie_casting_9=Movie_casting.new
new_movie_casting_9["movie_id"]="2"
new_movie_casting_9["actor_id"]="2"
new_movie_casting_9["character_name"]="Alfred"
new_movie_casting_9.save

new_movie_casting_10=Movie_casting.new
new_movie_casting_10["movie_id"]="2"
new_movie_casting_10["actor_id"]="8"
new_movie_casting_10["character_name"]="Rachel Dawes"
new_movie_casting_10.save

new_movie_casting_11=Movie_casting.new
new_movie_casting_11["movie_id"]="3"
new_movie_casting_11["actor_id"]="1"
new_movie_casting_11["character_name"]="Bruce Wayne"
new_movie_casting_11.save

new_movie_casting_12=Movie_casting.new
new_movie_casting_12["movie_id"]="3"
new_movie_casting_12["actor_id"]="5"
new_movie_casting_12["character_name"]="Commissioner Gordon"
new_movie_casting_12.save

new_movie_casting_13=Movie_casting.new
new_movie_casting_13["movie_id"]="3"
new_movie_casting_13["actor_id"]="9"
new_movie_casting_13["character_name"]="Bane"
new_movie_casting_13.save

new_movie_casting_14=Movie_casting.new
new_movie_casting_14["movie_id"]="3"
new_movie_casting_14["actor_id"]="10"
new_movie_casting_14["character_name"]="John Blake"
new_movie_casting_14.save

new_movie_casting_15=Movie_casting.new
new_movie_casting_15["movie_id"]="3"
new_movie_casting_15["actor_id"]="11"
new_movie_casting_15["character_name"]="Selina Kyle"
new_movie_casting_15.save




# Prints a header for the movies output
#puts "Movies"
#puts "======"
#puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!
movies=Movie.all

for movie in movies
    mtitle = movie["title"]
    year = movie["year_released"]
    mrating = movie["mpaa_rating"]
    stu = Studio.find_by({"id" => movie["studio_id"]})["title"]
    puts "#{mtitle} #{year} #{mrating} #{stu}"
end


# Prints a header for the cast output
#puts ""
#puts "Top Cast"
#puts "========"
#puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!

actor = Actor.all
movie_casting = Movie_casting.all

for  in roles
    ro = role["character_name"]
    movie_name = Movie.find_by({"id" => role["movie_id"]})["title"]
    actor_name = Actor.find_by({"id" => role["actor_id"]})["name"]
    puts "#{movie_name} #{actor_name} #{role_name}"
end