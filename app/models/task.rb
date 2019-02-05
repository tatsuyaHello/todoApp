class Task < ApplicationRecord
	validates :content,
		presence: true,
		uniqueness: true
	validates :deadline,
		presence: true
	validates :comment,
		presence: true 
end
