class CreateCalendars < ActiveRecord::Migration[7.0]
  def change
    create_table :calendars do |t|
      t.daterange :duration
      t.belongs_to :perfomance, null: false, foreign_key: true

      t.timestamps
    end
  end
end
