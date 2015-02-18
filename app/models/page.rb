class Page < ActiveRecord::Base
  attr_accessible :organisation_id, :body_text, :location, :menu, :menu_position, :public, :slug, :target_url, :title

  #associations between tables
  belongs_to :organisation
end
