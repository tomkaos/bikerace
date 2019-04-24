class Submission < ApplicationRecord
  validates :first_name, presence: true, length: { maximum: 20 }
  validates :last_name, presence: true, length: { maximum: 20 }
  validates :email, presence: true, format: { with: /[^@]+@[^@]+\.[a-zA-Z]{2,6}/ }, length: { maximum: 30 }
  validates :slogan, presence: true, length: { maximum: 50 }
end
