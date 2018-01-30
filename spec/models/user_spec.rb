require 'rails_helper'

RSpec.describe User do
  context "User validation" do
    it "is a valid user" do
      user = User.new(name:"Harish", gender:"Male", email:"hs@gmail.com", password:"hsp")
      expect(user.valid?).to eq(false)
    end
  end
end
