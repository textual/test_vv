class AddPriceToAlbum < ActiveRecord::Migration
  def self.up
    add_column :albums, :price, :decimal, :precision => 10, :scale => 2
  end

  def self.down
    remove_column :albums, :price
  end
end
