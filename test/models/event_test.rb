# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  event_date  :datetime
#  title       :string
#  start_hour  :time
#  end_hour    :time
#  location    :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
