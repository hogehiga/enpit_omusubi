class NavigateForm
  include ActiveModel::Model

  attr_accessor :images

  validate :validate_images

  def validate_images
    unless images
      errors.add(:images, :choise)
      return
    end

    selected_images = images.reject{|k, v| v == "0"} # check_boxは選択されなければ0で来るので除外。idが0のものがないことが前提。
    if selected_images.length < 1
      errors.add(:images, :choise)
    end
  end
end
