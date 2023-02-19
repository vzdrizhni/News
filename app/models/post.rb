class Post < ApplicationRecord
  include ImageUploader::Attachment(:image)
  validates :title, presence: true
  validates :body, presence: true
  has_rich_text :body
  belongs_to :user
  has_many :comments

  def content_text=(body)
    self.body.body = body
  end

  def content_text
    body.to_s.gsub(/\A<div class="trix-content">(.*)<\/div>\z/m, '\1').strip.html_safe
  end

  before_save do
    self.date = Date.today
  end
end
