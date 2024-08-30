require 'rails_helper'

RSpec.describe Company, type: :model do
  # include_context 'general database testing setup'
  let!(:culture_type) { CultureType.find_or_create_by!(name: 'Amazin') }

  it 'is valid with a name' do
    company = Company.new(name: 'Banana Store', culture_type: culture_type)
    expect(company).to be_valid
  end

  it 'is invaliid with non-unique name' do
    Company.create!(name: 'Pick up', culture_type: culture_type)
    pick_up_two = Company.new(name: 'Pick up', culture_type: culture_type)
    expect(pick_up_two).not_to be_valid
  end

  it 'has culture_type. "undefined" when no culture_type is set' do
    company = Company.new(name: 'Pick up')
    expect(company.culture_type.name).to eq('undefined')
  end
end
