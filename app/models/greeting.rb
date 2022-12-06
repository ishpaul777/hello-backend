class Greeting < ApplicationRecord
  validates :message, presence: true
  validates :language, presence: true
end
