class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :trade_mark
  belongs_to :supplier
end
