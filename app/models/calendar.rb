class Calendar < ApplicationRecord
  attr_accessor :start_date, :end_date

  belongs_to :perfomance
end
