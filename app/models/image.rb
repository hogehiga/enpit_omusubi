class Image < ApplicationRecord

  # 最近傍法
  def self.approximate_shortest_route(start_image_id, image_ids)
    images = []
    src = find(start_image_id)
    images << src
    dests = find(image_ids)
    (0..dests.length - 1).each do
      nearest = find_nearest(src, dests)
      dests.delete(nearest)
      images << nearest
      src = nearest
    end
    return images
  end

  private

  def self.find_nearest(src, dests)
    tmp = []
    dests.each do |i|
      tmp << {image: i, distance: (i.lat - src.lat) ** 2 + (i.lng - src.lng) ** 2 }
    end
    return tmp.sort{ |i, j| i[:distance] <=> j[:distance] }.first[:image]
  end
end
