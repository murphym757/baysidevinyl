class Track < ApplicationRecord

  belongs_to :user

    has_attached_file :image, styles: { medium: "400x400#" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

    has_attached_file :mp3
    validates_attachment :mp3, content_type: { content_type: ["audio/mpeg", "audio/mp3"] }, file_name: { matches: [/mp3\z/] }
end
