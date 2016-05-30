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
#  who_i_am             :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'test_helper'

class CopyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
