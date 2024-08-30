require 'rails_helper'

RSpec.describe Match, type: :model do
  # include_context 'general database testing setup'

  it 'is invalid without an applicant' do
    match = Match.new(company: @company_one)
    expect(match).not_to be_valid
  end

  fit 'is invalid without a company' do
    match = Match.new(applicant: @applicant_one)
    expect(match).not_to be_valid
  end
end
