class AddLyricUrlToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :lyric_url, :string
  end
end
