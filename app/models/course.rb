class Course < ActiveRecord::Base
  attr_accessible :code, :description, :teacher, :code_id

  #
  # Relationships
  #
  has_many :users, dependent: :destroy
  has_many :groups, dependent: :destroy


  #
  # Validations
  #
  validates :code, presence: true
  validates :description, presence: true
  validates :teacher, presence: true
  validates :code_id, presence: true


  def pretty
    "#{self.code_id} - #{self.description} (#{self.teacher})"
  end

  #
  # Class methods
  #
  def self.ordered_by_id
    Course.order(:id)
  end
end
