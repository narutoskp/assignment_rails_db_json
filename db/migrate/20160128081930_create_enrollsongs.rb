class CreateEnrollsongs < ActiveRecord::Migration
  def change
    create_table :enrollsongs do |t|
      t.integer :song_id
      t.integer :playlist_id

      t.timestamps null: false
    end
  end
end
