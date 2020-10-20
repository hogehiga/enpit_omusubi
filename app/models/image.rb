class Image < ApplicationRecord
  def self.approximate_shortest_route(start_image_id, image_ids)
    images = find(image_ids)
    return images
  end
end
