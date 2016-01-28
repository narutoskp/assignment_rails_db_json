class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :name_playlist

      t.timestamps null: false
    end
  end
end
