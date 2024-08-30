class Applicant < ApplicationRecord
  belongs_to :culture_type

  after_initialize :set_default_culture_type

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :first_name, uniqueness: { scope: :last_name, message: 'first + last name combination must be unique' }
  validates :culture_type, presence: true

  validate :culture_type_must_be_valid

  private

  def set_default_culture_type
    self.culture_type ||= CultureType.find_by(name: 'undefined')
  end

  def culture_type_must_be_valid
    #check if one of CT in db once established
  end
end
