class Person < ActiveRecord::Base
  belongs_to :organization
  has_many :role_plays
  has_many :roles, through: :role_plays, source: :role

  attr_accessible :name, :organization

  validates :organization, presence: true

  def add_role!(role)
    self.roles << role
  end
end
