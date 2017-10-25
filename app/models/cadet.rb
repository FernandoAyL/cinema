class Cadet < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum state: [:pending, :accepted, :rejected]


  has_attached_file :profile_photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  #default_url: "/images/:style/missing.png"
  has_attached_file :license, styles: {thumbnail: "60x60#"}

  #do_not_validate_attachment_file_type :profile_photo
  validates_attachment_content_type :profile_photo, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :license, content_type: "application/pdf"

  #validates_attachment :document, content_type: { content_type: "application/pdf" }


#validates_attachment :avatar, presence: true,
##  content_type: { content_type: "image/jpeg" },
#  size: { in: 0..10.kilobytes }


end
