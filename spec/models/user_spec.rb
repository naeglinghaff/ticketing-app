require 'test_helper'

RSpec.describe User, :type => :model do
  it "is not valid without an email address" do
    expect(User.new(email: "countcatula@email.com", password: "12345678")).to be_valid
  end
end
