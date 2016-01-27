class Web < ActiveRecord::Base
  mount_uploader :cover, VideoCoverUploader
  scope :sort_order, -> { order("id desc") }
end
