require 'rails_helper'

RSpec.describe CultureType, type: :model do
  it 'is valid with a name' do
    culture_type = CultureType.new(name: "Competetive")
    expect(culture_type).to be_valid
  end

  it 'is invalid without a name' do
    culture_type = CultureType.new(name: nil)
    expect(culture_type).not_to be_valid
    expect(culture_type.errors[:name]).to include("can't be blank")
  end

  it 'creates and persists a culture type' do
    CultureType.create!(name: 'TestType')
    expect(CultureType.all.map(&:name)).to include('TestType')
  end
end
