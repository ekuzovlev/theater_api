class Perfomance < ApplicationRecord
  has_many :calendars

  validates :title,
            presence: true,
            length: { maximum: 255 }
end
