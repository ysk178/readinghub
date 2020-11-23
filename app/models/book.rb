class Book < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :image, presence: true
  validates :text, presence: true

  belongs_to :user
  has_many :comments

  def self.search(search)
    if search != ""
      Book.where('text LIKE(?)', "%#{search}%")
    else
      Book.all
    end
  end
end
