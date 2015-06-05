class Option < ActiveRecord::Base
  
	#associations between tables
	belongs_to :question
    
    has_many :option_warnings, :dependent => :destroy
	has_and_belongs_to_many :answers, join_table: "answers_options"
    
	attr_accessible :text, :question_id, :is_default, :number

	#validation - start
  validates :question,:presence => true
  validates :text, :length => { :minimum => 1 }
  validates :number,numericality: { only_integer: true, :greater_than => 0 }
  #validation - end
  
	def to_s
		"#{text}"
	end
end
