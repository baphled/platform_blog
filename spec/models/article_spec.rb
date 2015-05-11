require 'rails_helper'

describe Article do

  it { should respond_to(:comments) }

  describe "#body" do
    it 'must have content' do
      expect(subject).to be_invalid
      expect(subject.errors.messages).to include(:body)
    end
  end
end
