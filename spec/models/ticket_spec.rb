require 'spec_helper'

RSpec.describe Ticket, type: :model do

  describe 'associations' do
    it { should belong_to(:user).class_name('User') }
  end

  it "is valid with a title, description and User" do
    user = User.create(email:"countcatula@email.com", password: "12345678")
    expect(Ticket.new( title: "new problem", description: "there is not a problem here", user_id: 1)).to be_valid
  end

  it "is not valid without a title and description" do
    expect(Ticket.new(title: nil, description: nil)).to_not be_valid
  end
end
