# == Schema Information
#
# Table name: blog_entries
#
#  id                 :integer          not null, primary key
#  title              :string
#  author             :string
#  content            :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

require 'test_helper'

class BlogEntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
