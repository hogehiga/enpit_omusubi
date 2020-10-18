class NavigateForm
  include ActiveModel::Model

  attr_accessor :images

  validate :validate_images

  def validate_images
    unless images
      errors.add(:images, '画像を選択してください')
      return
    end
    if images.length < 1
      errors.add(:images, '画像を選択してください')
    end
  end
end
