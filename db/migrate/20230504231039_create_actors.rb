class CreateActors < ActiveRecord::Migration[7.0]
  def change
    create_table :actors do |t|
      t.integer "actor_id"
      t.string "actor_name"
      t.timestamps
    end
  end
end

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


