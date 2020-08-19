class Book < ApplicationRecord
	belongs_to :user
	validates :title, :body, length: { maximum: 200 }
	validates :title, :body, presence: true
end
