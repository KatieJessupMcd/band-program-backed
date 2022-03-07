class ChangeMusicLibrariesToMusicPieces < ActiveRecord::Migration[7.0]
  def change
    rename_table :music_libraries, :music_pieces
  end
end
