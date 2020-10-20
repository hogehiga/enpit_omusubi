class Image < ApplicationRecord
  def self.approximate_shortest_route(image_ids)
    images = find(image_ids)
    return images
  end
end
