require 'rails_helper'

RSpec.describe Campaign, type: :model do
  describe "validations" do
    it "requires a title" do
      # Given campaign record with no title
      c = Campaign.new
      # when: invoke validations
      result = c.valid?
      # then: expect the outcome to be false
      # expect(result).to eq(false)
      expect(c.errors).to have_key(:title)
    end

    it "requires a body" do
      c = Campaign.new
      c.valid?
      expect(c.errors).to have_key(:body)
    end

    it "requires a unique title" do
      # Given: a campaign created in the database with some title
      Campaign.create(title: "abc", body: "1234", goal: 25)

      #when: New campaign being created with the same title
      c = Campaign.create(title: "abc", body: "1234", goal: 25)
      c.valid?
      #then: errrpr in the title field
      expect(c.errors).to have_key(:title)
    end
    it "requires a goal that is $10 or more" do
      c = Campaign.new goal:7
      c.valid?
      expect(c.errors).to have_key(:goal)
    end
  end

  describe ".upcased_title" do
    it "returns an upcased version of the campaign's little" do
      c = Campaign.new title: "abc"
      expect(c.upcased_title).to eq("ABC")
    end
  end
end
