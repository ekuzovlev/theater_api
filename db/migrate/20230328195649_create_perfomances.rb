class CreatePerfomances < ActiveRecord::Migration[7.0]
  def change
    create_table :perfomances do |t|
      t.string :title

      t.timestamps
    end
  end
end
