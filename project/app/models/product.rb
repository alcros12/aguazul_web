class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :trade_mark
  belongs_to :supplier
  
  
  #picture as attribute
  has_attached_file :picture,
    :styles => { :medium =>"300x300>", :thumb=>"100x100>"},
    :default_url => "/images/:style/missing.png"


    validates :picture, attachment_presence: true, presence: true
    validates_attachment :picture,
    presence: true,
    content_type: { content_type: ["image/jpeg","image/gif","image/png"]}
   
  def self.search(search)
  where("name LIKE ?", "%#{search}%")
  end
  
  def self.named_like(search_name)
    where("name LIKE ?", "%#{search_name}%")
  end
    
  
end


