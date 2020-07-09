require 'spec_helper'

RSpec.describe User, type: :model do
  it "is valid with an email address and password" do
    expect(User.new(email: "countcatula@email.com", password: "12345678")).to be_valid
  end

  it 'is not valid without a valid email address' do
    expect(User.new(email: "countcatula.email.com", password: "12345678")).to_not be_valid
  end

  it 'is not valid without a valid password' do
    expect(User.new(email: "countcatula.email.com", password: "1234")).to_not be_valid
  end

end
