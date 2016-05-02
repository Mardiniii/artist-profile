class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :event_date
      t.string :title
      t.time :start_hour
      t.time :end_hour
      t.string :location
      t.text :description

      t.timestamps null: false
    end
  end
end
