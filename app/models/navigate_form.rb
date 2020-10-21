class NavigateForm
  include ActiveModel::Model

  attr_accessor :images

  validate :validate_images

  def validate_images
    unless images
      errors.add(:images, :choise)
      return
    end
    if images.length < 1
      errors.add(:images, :choise)
    end
  end
end
