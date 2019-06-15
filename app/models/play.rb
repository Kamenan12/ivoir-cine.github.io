class Play < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_attached_file :play_img, styles: { play_index: "250x350>", play_show: "325x475>" }
  validates_attachment_content_type :play_img, content_type: /\Aimage\/.*\z/
end
