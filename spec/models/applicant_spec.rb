require 'rails_helper'

RSpec.describe Applicant, type: :model do
  # include_context 'general database testing setup'
  let!(:culture_type) { CultureType.find_or_create_by!(name: 'Amazin') }

  it 'is valid with first_name, last_name, culture_type' do
    applicant = Applicant.new(first_name: 'James', last_name: 'Bond', culture_type:)
    expect(applicant).to be_valid
  end

  it 'is invalid with non-unique name' do
    Applicant.create!(first_name: 'James', last_name: 'Bond', culture_type: culture_type)
    james_two = Applicant.new(first_name: 'James', last_name: 'Bond', culture_type: culture_type)
    expect(james_two).not_to be_valid
  end

  it 'has culture_type: "undefined" when no culture_type is set' do
    applicant = Applicant.new(first_name: 'James', last_name: 'Bond')
    expect(applicant.culture_type.name).to eq('undefined')
  end
end
