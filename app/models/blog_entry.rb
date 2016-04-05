# == Schema Information
#
# Table name: blog_entries
#
#  id         :integer          not null, primary key
#  title      :string
#  author     :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BlogEntry < ActiveRecord::Base
end
