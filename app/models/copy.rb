# == Schema Information
#
# Table name: copies
#
#  id                   :integer          not null, primary key
#  home_title_1         :text
#  home_text            :text
#  home_service_title_1 :text
#  home_service_text_1  :text
#  home_service_link_1  :text
#  home_service_title_2 :text
#  home_service_text_2  :text
#  home_service_link_2  :text
#  home_service_title_3 :text
#  home_service_text_3  :text
#  home_service_link_3  :text
#  footer_title_1       :text
#  footer_text_1        :text
#  footer_title_2       :text
#  footer_text_2        :text
#  footer_title_3       :text
#  footer_text_3        :text
#  contact_title        :text
#  contact_text         :text
#  contact_phone_1      :string
#  contact_phone_2      :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Copy < ActiveRecord::Base
  validates :home_title_1, :home_text, :home_service_title_1, :home_service_text_1, :home_service_link_1, :home_service_title_2, :home_service_text_2, :home_service_link_2, :home_service_title_3, :home_service_text_3, :home_service_link_3, :footer_title_1, :footer_text_1, :footer_title_2, :footer_text_2, :footer_title_3, :footer_text_3, :contact_title, :contact_text , :contact_phone_1, :contact_phone_2, presence: { message: "Todos los contenidos son necesarios"}
end
