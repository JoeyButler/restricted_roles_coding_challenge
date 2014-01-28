class RolePlay < ActiveRecord::Base
  attr_accessible :person_id, :role_id, :person, :role

  belongs_to :role
  belongs_to :person

  class MatchingOrganizationsValidator < ActiveModel::Validator
    def validate(record)
      if record.role.organization != record.person.organization
        record.errors[:base] = 'The Role must belong to the same Organization as the Person.'
      end
    end
  end

  validates_with MatchingOrganizationsValidator

end
