class Article < ActiveRecord::Base
  validates_presence_of :title, :body
  validates_uniqueness_of :title
  
  has_many :comments, :dependent => :destroy
end
