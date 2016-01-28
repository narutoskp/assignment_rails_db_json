class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name_song

      t.timestamps null: false
    end
  end
end
