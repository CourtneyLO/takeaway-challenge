require 'menu'

describe Menu do
    subject(:menu) { described_class.new }

    it "should test that make selection returns an array" do
      expect(menu.make_selection(1, 2)).to be_kind_of Array
    end

  context "Users orders" do
      let(:order1) { {number1: 1, starter1: :soup, price: 5} }
      it "should return users order" do
         expect(menu.make_selection(1, 1)).to include(order1)
      end
  end
end
