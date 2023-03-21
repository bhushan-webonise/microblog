class Post < ApplicationRecord
  extend FriendlyId
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 5 }
  friendly_id :title, use: %i[slugged]

  def should_generate_new_friendly_id?
    title_changed? || slug.blank?
  end

  def self.sort_post
    Post.all.sort_by(&:title)
  end

  def self.srch_post
    Post.search(&:title)
  end
end

