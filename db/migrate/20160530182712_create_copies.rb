class CreateCopies < ActiveRecord::Migration
  def change
    create_table :copies do |t|
      t.text :home_title_1
      t.text :home_text
      t.text :home_service_title_1
      t.text :home_service_text_1
      t.text :home_service_link_1
      t.text :home_service_title_2
      t.text :home_service_text_2
      t.text :home_service_link_2
      t.text :home_service_title_3
      t.text :home_service_text_3
      t.text :home_service_link_3
      t.text :footer_title_1
      t.text :footer_text_1
      t.text :footer_title_2
      t.text :footer_text_2
      t.text :footer_title_3
      t.text :footer_text_3
      t.text :contact_title
      t.text :contact_text
      t.string :contact_phone_1
      t.string :contact_phone_2
      t.string :who_i_am

      t.timestamps null: false
    end
  end
end
