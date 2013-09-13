require 'spec_helper'

describe User do 
	before do
		@user = User.create(email: "nick@nick.com", password: "password", password_confirmation: "password")
	end

	subject{@user}

	its(:email) { should = "nick@nick.com"}

	it {should respond_to(:remember_token)}

	context "password is too short" do
		before {@user.password = "a" * 5}
		it { should be_invalid }
	end

	context "email is not present" do
		before { @user.email = "" }
		it { should be_invalid}
	end

	describe "remember token" do
		before { @user.save }
		its(:remember_token) {should_not be_blank}
	end
end
