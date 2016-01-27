class Web < ActiveRecord::Base
  mount_uploader :cover, WebCoverUploader
  scope :sort_order, -> { order("id desc") }
end
