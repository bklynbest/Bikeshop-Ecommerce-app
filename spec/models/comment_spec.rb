require 'rails_helper'

describe Comment do

  context "when comment is created" do
    # let(:product) {Product.create!(name: 'tier 1 bike', description: 'Decent bike', image_url: 'tier1bike.jpg', category: 'biking', price: 5.99)}
    # let(:user) {User.create!(first_name: 'Jonathan', last_name: 'Test', email: 'test@user.com', password: 'Testpass')}

    it "return comment body when all params exit and valid" do
      # expect(Comment.new(user: @user, product: @product, body: "decent bike")).not_to be_valid
      expect(FactoryBot.build(:comment)).to be_valid
    end
    it "returns comment body exists but creation is not vaild, rating is numeric only" do
      # expect(Comment.new(user: @user, product: @product, body: "Decent bike", rating: "two stars")).not_to be_valid
      expect(FactoryBot.build(:comment, rating: "two Stars")).not_to be_valid
    end
  end
end
