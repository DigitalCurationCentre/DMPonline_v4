class Section < ActiveRecord::Base

  #associations between tables
  belongs_to :version
  belongs_to :organisation
  has_many :questions, :dependent => :destroy
  has_many :plan_sections, :dependent => :destroy

  #Link the data
  accepts_nested_attributes_for :questions, :reject_if => lambda {|a| a[:text].blank? },  :allow_destroy => true
  accepts_nested_attributes_for :version

  attr_accessible :organisation_id, :description, :number, :title, :version_id , :published, :questions_attributes

  #validation - start
  validates :version,:presence => true
  validates :organisation,:presence => true
  validates :title, :length => { :minimum => 1 }
  validates :number,numericality: { only_integer: true, :greater_than => 0 }
  #validation - end

  def to_s
    "#{title}"
  end

  amoeba do
    include_field :questions
  end

end
