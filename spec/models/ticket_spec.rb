require 'spec_helper'

RSpec.describe Ticket, type: :model do

  subject { described_class.new }

  describe 'associations' do
    it { should belong_to(:user).class_name('User') }
  end

  it "is valid with a title and description" do
    expect(Ticket.new(title: "new problem", description: "there is a problem here")).to be_valid
  end

  it "is not valid without a title and description" do
    expect(Ticket.new(title: nil, description: nil)).to_not be_valid
  end


end
