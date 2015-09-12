require 'open-uri'

class Classified < ActiveRecord::Base
  belongs_to :user
  #has_many :questions
  #has_many :answers
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>", mini: "50x50>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  def image_from_url(url)
    self.image_file_name = URI.parse(url)
  end
end
