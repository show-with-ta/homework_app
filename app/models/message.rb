class Message < ApplicationRecord
  belongs_to :user, optional: true

  validates :text, presence: true
  validates :text, legth: { maximum: 25 }
end
