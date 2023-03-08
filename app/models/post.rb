class Post < ApplicationRecord
  extend FriendlyId
  has_many :comments
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 5 }
  friendly_id :title, use: %i[slugged]

  def should_generate_new_friendly_id?
    title_changed? || slug.blank?
  end
end
