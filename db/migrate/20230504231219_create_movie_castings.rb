class CreateMovieCastings < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_castings do |t|
      t.integer "movie_id"
      t.integer "actor_id"
      t.string "character_name"
      t.timestamps
    end
  end
end

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

