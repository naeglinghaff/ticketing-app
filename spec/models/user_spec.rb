require 'spec_helper'

RSpec.describe User, type: :model do

  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
  end

  describe 'associations' do
    it { should have_many(:tickets) }
  end

  describe 'defaults' do
    it 'should have false as the default admin field' do
      user = User.new(email: "lordlooney@email.com", password: "759258985")
      expect(user.admin).to eq(false)
    end
  end

end
