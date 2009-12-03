class Gallery < ActiveRecord::Base
  has_attached_file :photo, :styles => { :thumbnail => "130x130>", :portrait => "150x150>", :medium => "180x180>", :preview => "492x492>" },
  					:url => "/assets/galleries/:id/:style/:basename.:extension",
  					:path => ":rails_root/public/assets/galleries/:id/:style/:basename.:extension"
end

