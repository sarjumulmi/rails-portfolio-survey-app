class Survey < ActiveRecord::Base
  belongs_to :creator, :class_name=>"User", :foreign_key=>"creator_id"
  has_many :submissions
  has_many :submitters, :through => :submissions, :source => :submitter

  validates :title, presence: true


end
