require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    it "ensures the presence of a email" do
      user = User.new(email: "bhushan@webonise.com").save
      expect(user).to eq(false)
    end

    it "ensures the presence of a password" do
      user=User.new(email:"bhushan@webonise.com").save
      pass=User.new(password:" ").save
      expect(pass).to eq(false)
    end

    it "user email must contain .com " do
      user=User.new(email:"bhushan@webo.com")
      expect(user).to include('.com')
    end

    it "ensures that valid email" do
      user=User.new(email: "bhushan@webo.com",password:"bhushan@123") 
      expect(user).to be_valid 
    end      
  end
end


