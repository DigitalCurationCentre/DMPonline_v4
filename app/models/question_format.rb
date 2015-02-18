class QuestionFormat < ActiveRecord::Base
  attr_accessible :title, :description
  
  #associations between tables
  has_many :questions
  
   def to_s
    "#{title}"
  end
  
  
end