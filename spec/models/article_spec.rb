require 'rails_helper'

describe Article do

  describe "#body" do
    it 'must have content' do
      expect(subject).to be_invalid
      expect(subject.errors.messages).to include(:body)
    end
    it 'can be written in markdown'
    it 'can rendered with Markdown'
  end
end
