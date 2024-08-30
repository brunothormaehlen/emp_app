class Company < ApplicationRecord
  belongs_to :culture_type

  after_initialize :set_default_culture_type

  validates :name, presence: true
  validates :name, uniqueness: true

  # validate :culture_type_must_be_valid

  private

  def set_default_culture_type
    self.culture_type ||= CultureType.find_by(name: 'undefined')
  end

  def culture_type_must_be_valid
    #look for premade methods
  end
end
