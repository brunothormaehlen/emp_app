RSpec.shared_context 'general database testing setup', shared_context: :metadata do
  before(:all) do
    @undefined_culture_type = CultureType.find_or_create_by!(name: 'undefined')
    @culture_type_one = CultureType.find_or_create_by!(name: 'Innovative')
    @culture_type_two = CultureType.find_or_create_by!(name: 'Amazin')
    @applicant_one = Applicant.find_or_create_by!(first_name: 'Bob', last_name: 'Banana', culture_type: @culture_type_one)
    @company_one = Company.find_or_create_by!(name: 'Imposters', culture_type: @culture_type_two)
  end
end
