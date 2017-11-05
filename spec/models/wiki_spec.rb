require 'rails_helper'

RSpec.describe Wiki, type: :model do
  let(:post) { Wiki.create!(title: "New Wiki Title", body: "New Wiki Body") }

  describe "attributes" do
    it "has title and body attributes" do
      expect(post).to have_attributes(title: "New Wiki Title", body: "New Wiki Body")
    end
  end
end
