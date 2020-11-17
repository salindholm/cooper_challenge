require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should have a valid Factory' do
    expect(create(:user)).to be_valid
  end

  describe 'Database table' do
    it { is_expected.to have_db_column :encrypted_password }
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :tokens }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :email }
    it { is_expected.to validate_presence_of :password }

    context 'should not have an invalid email address' do
      emails = ['mail@ mail.com', '@mail.com', 'no email @email.com',
                'mail@mail', 'mail@.m. .ail', 'mail@.m']

      emails.each do |email|
        it { is_expected.not_to allow_value(email).for(:email) }
      end
    end

    context 'should have a valid email address' do
      emails = ['mail@mail.com', 'mail@mail.se', 'mail1234@yahoo.si', 
              'abcde@mail.eu']
    
      emails.each do |email|
        it { is_expected.to allow_value(email).for(:email)}
      end
    end
  end

  describe 'Relations' do
    it { is_expected.to have_many :performance_data }
  end
end
