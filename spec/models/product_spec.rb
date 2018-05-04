require 'rails_helper'

describe Product do
  let (:product) { Product.create!(name: "race bike") }
end
describe User do
  let (:user) {User.create!(email:"bklynman8381@gmail.com" password:"33242df" )}
end
  before do
    product.comments.create!(rating: 1, user: user, body: "Awful bike!")
    product.comments.create!(rating: 3, user: user, body: "Ok bike!")
    product.comments.create!(rating: 5, user: user, body: "Great bike!")
  it "returns the average rating of all comments" do
  end
end
expect(Product.new(description: "Nice bike")).not_to be_valid
