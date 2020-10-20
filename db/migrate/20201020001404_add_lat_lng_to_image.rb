class AddLatLngToImage < ActiveRecord::Migration[6.0]
  def change
    add_column :images, :lat, :float
    add_column :images, :lng, :float
  end
end
