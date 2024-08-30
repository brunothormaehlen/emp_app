class CultureType < ApplicationRecord
  has_many :applicants

  validates :name, presence: true, uniqueness: true
end
