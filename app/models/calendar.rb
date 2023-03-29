class Calendar < ApplicationRecord
  attr_accessor :start_date, :end_date

  belongs_to :perfomance

  validate :duration_cannot_include_dates

  def duration_cannot_include_dates
    duration.each do |perfomance_day|
      if Calendar.where("duration @> ?::date", perfomance_day).present?
        errors.add(:duration, 'cannot include one of these dates')

        return
      end
    end
  end
end
