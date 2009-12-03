class Article < ActiveRecord::Base
  has_attached_file :photo, :styles => {  :thumbnail => "100x100>", :portrait => "150x150>", :medium => "180x180>",
                                          :standard => "300x300>", :preview => "450x450>" },
  					:url => "/assets/articles/:id/:style/:basename.:extension",
  					:path => ":rails_root/public/assets/articles/:id/:style/:basename.:extension"
end

