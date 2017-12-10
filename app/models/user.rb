class User < ApplicationRecord

  attr_accessor :image

  before_validation :encode_image

  def encode_image
    self.image_base64 = Base64.encode64(File.open(self.image.tempfile, "rb").read)
  end

end
