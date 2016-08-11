require_relative "../orange"
require_relative "../orange_tree"


describe OrangeTree do
  let(:tree) { OrangeTree.new }

  #You'll need to switch `pending` to `describe` when you're ready
  # to implement each set of tests.

  describe "#age" do
    it "has an age" do
      expect(tree.age).to eq 0
    end
  end

  describe "#height" do
    it "has a height" do
      expect(tree.height).to eq 0
    end
  end

  describe "#pass_growing_season" do
    it "should change the age by 1 year" do
      # This should be more explicit. How much should the tree age by?
      # https://www.relishapp.com/rspec/rspec-expectations/v/2-0/docs/matchers/expect-change
      expect {tree.pass_growing_season }.to change { tree.age }.to 1
    end

    it "should make the tree grow" do
      #This should be more explicit. How much should the tree grow?
      expect {tree.pass_growing_season}.to change{tree.height}.to 2.5
    end

    context "the tree is old enough to bear fruit" do
      it "should cause the tree to produce oranges" do
        6.times do
          tree.pass_growing_season
        end
        expect(tree.produced_oranges).to be_within(100).of(200)
      end
    end
  end

  describe "#mature?" do
    it "returns false if tree is not old enough to bear fruit" do
       expect(tree.mature?).to eq false
    end

    it "returns true if tree is old enough to bear fruit" do
      6.times do
          tree.pass_growing_season
      end
      expect(tree.mature?).to eq true
    end
  end

  describe "#dead?" do
    it "should return false for an alive tree" do
      99.times do
          tree.pass_growing_season
      end
      expect(tree.dead?).to eq false
    end

    it "should return true for a dead tree" do
      100.times do
        tree.pass_growing_season
      end
      expect(tree.dead?).to eq true
    end
  end

  describe '#has_oranges?' do
    it 'should return true if oranges are on the tree' do
       6.times do
          tree.pass_growing_season
        end
      expect(tree.has_oranges?).to eq true
    end

    it "should return false if the tree has no oranges" do
       5.times do
          tree.pass_growing_season
        end
      expect(tree.has_oranges?).to eq false
    end
  end

  describe "#pick_an_orange" do
    # let(:num_o_orng) {tree.produced_oranges}
    it "should return an orange from the tree" do
      6.times do
          tree.pass_growing_season
      end
      expect {tree.pick_an_orange}.to change {tree.oranges_in_basket}.to 1
    end

    it "the returned orange should no longer be on the tree" do
      6.times do
          tree.pass_growing_season
      end
      expect{tree.pick_an_orange}.to change{tree.produced_oranges}.to (tree.produced_oranges-1)
    end

    it "should raise an error if the tree has no oranges" do
      5.times do
          tree.pass_growing_season
      end
      expect{tree.pick_an_orange}.to raise_error OrangeTree::NoOrangesError
    end
  end
end
