class CreateStudios < ActiveRecord::Migration[7.0]
  def change
    create_table :studios do |t|
      t.integer "studio_id"
      t.string "studio_name"
      t.timestamps
    end
  end
end

studio.destroy_all

new_studio= Studio.new
new_studio["studio_id"]="1"
new_studio["studio_name"]="Warner_Bros"
new_studio.save
