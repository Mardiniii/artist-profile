# == Schema Information
#
# Table name: galleries
#
#  id                  :integer          not null, primary key
#  title               :string
#  description         :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  avatar_file_name    :string
#  avatar_content_type :string
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#

class Gallery < ActiveRecord::Base
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, :limit => 50, :reject_if => :all_blank, allow_destroy: true

  has_attached_file :avatar, styles: { medium: "300x150#", thumb: "100X100#", large: "560x290#", cover: "170x170#" }, default_url: "http://i592.photobucket.com/albums/tt5/Mardini03/imagen-no-disponible.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  validates :title, :description, :avatar, presence: { message: "Todos los campos son obligatorios"}
  validates_associated :images

  validates :description, length: { maximum: 200,
    too_long: "%{count} caracteres es el máximo permitido para el campo descripción" }
end