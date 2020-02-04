class Memo < ApplicationRecord
  validates :content, :rate, presence: true
  belongs_to :user
end
