class Post < ApplicationRecord
	acts_as_votable
	has_many :comments, dependent: :destroy
	belongs_to :user
	has_attached_file :image, styles: { medium: "300x300>", small: "100x100>"}
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    Paperclip.options[:command_path] = "/usr/local/bin/identify"
    Paperclip.options[:command_path] = "/usr/local/bin/"
end
