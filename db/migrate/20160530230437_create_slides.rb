class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :first_text
      t.text :second_text
      t.string :button_content
      t.string :button_link

      t.timestamps null: false
    end
  end
end
