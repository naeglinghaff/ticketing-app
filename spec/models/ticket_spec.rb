require 'spec_helper'

RSpec.describe Ticket, type: :model do

  describe 'associations' do
    it { should belong_to(:user).class_name('User') }
  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:user) }
  end

  describe 'defaults' do
    it 'should default complete field to false' do
      ticket = Ticket.new(title: "title", description: "description", user_id: 1)
      expect(ticket.completed).to eq(false)
    end

    it 'should default priority field to 0' do
      ticket2 = Ticket.new(title: "title", description: "description", user_id: 1)
      expect(ticket2.priority).to eq(0)
    end
  end

end
