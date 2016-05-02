class Project < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  def should_generate_new_friendly_id?
    title_changed?
  end

  has_attached_file :image, styles: { medium: "300x300>", large: "1920x1080" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
