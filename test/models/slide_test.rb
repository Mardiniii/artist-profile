# == Schema Information
#
# Table name: slides
#
#  id             :integer          not null, primary key
#  first_text     :string
#  second_text    :text
#  button_content :string
#  button_link    :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class SlideTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
