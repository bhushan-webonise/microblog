class Post < ApplicationRecord
  extend FriendlyId
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 2 }
  friendly_id :title, use: %i[slugged]

  def should_generate_new_friendly_id?
    title_changed? || slug.blank?
  end
end


