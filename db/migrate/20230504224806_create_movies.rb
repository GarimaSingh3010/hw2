class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string "title"
      t.string "year_released"
      t.string "mpaa_rating"
      t.string "studio_id"
      t.timestamps
    end
  end
end

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



      





