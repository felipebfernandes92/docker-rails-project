require 'rails_helper'

RSpec.describe User, type: :model do
  user = User.new

  it "is invelid if the level is not between 1 and 99" do
    expect(User.create(nickname: 'Felipe', kind: :wizard, level: 100)).to_not be_valid  
  end

  it "returns the correct hero title" do
    user = User.create(nickname: 'Felipe', kind: :wizard, level: 1)
    expect(user.title).to eq('wizard Felipe #1')
  end

end
