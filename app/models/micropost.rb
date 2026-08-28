class Micropost < ApplicationRecord
  belongs_to :user
  has_one_attached :image do |attachable|
    attachable.variant :display, resize_to_limit: [500, 500]
  end
  has_one_attached :audio do |attachable|
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  validates :image,   content_type: { in: %w[image/jpeg image/gif image/png],
                                      message: "must be a valid image format" },
                      size:         { less_than: 5.megabytes,
                                      message:   "should be less than 5MB" }
  end
  validates :audio,   content_type: { in: %w[audio/mpeg],
                                      message: "must be a valid audio format" },
                      size:         { less_than: 20.megabytes,
                                      message:   "should be less than 20MB" }

  scope :search_content_for, ->(query) { where('content like ?', "%#{query}%") } #content カラムの中に query が含まれる投稿を検索、?はプレースホルダ
end
