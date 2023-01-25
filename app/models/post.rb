class Post < ApplicationRecord
  include ImageUploader::Attachment(:image)
  validates :title, presence: true
  validates :body, presence: true
  has_rich_text :body

  before_save do
    self.date = Date.today
  end
end
