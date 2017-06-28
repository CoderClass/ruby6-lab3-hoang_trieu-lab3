require 'rails_helper'

RSpec.describe Product, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
#  RSpec.describe Product, type: :model do
  # Use .alphabetical because it's a class method. Example: Product.alphabetical
  # Use #long_name when #long_name is an instance method. Example: @product.long_name
  describe ".alphabetical" do
    it "returns [] when there are no products" do
      expect(Product.alphabetical).to eq []
    end

    it "returns [a] when there is only one product a" do
       a  = Product.create(
        name: 'Nón Son',
        description: 'A wonderful conical',
        image_path: 'non.jpg',
        price_vnd: 20000000.0,
        weight: 100
      )
      expect(Product.alphabetical).to eq [a]
    end

    it "returns [a,b,c] after I create 3 products c, b, a" do
      expect(Product.alphabetical).to eq [a] [b] [c]
    end
  end
end
