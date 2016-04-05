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

class BlogEntry < ActiveRecord::Base
  has_attached_file :image, styles: { index_size: "990x500#", show_size: "1170x500#", thumb: "100x100#" }, default_url: "http://i592.photobucket.com/albums/tt5/Mardini03/imagen-no-disponible.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :title, :author, :content, :image, presence: { message: "Todos los campos son obligatorios"}
end
