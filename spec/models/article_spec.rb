require 'rails_helper'

describe Article do

  it { should respond_to(:comments) }

  describe "#body" do
    it 'must have content' do
      expect(subject).to be_invalid
      expect(subject.errors.messages).to include(:body)
    end
  end

  describe "#notify_subscriber" do
    subject { described_class.new title: 'foo', body: 'some content' }

    let(:newsletter) { Newsletter.create!(email: 'y@me.com') }

    before do 
      ActionMailer::Base.deliveries = []
      subject.save
    end

    it 'gets all subscribers' do
      expect(Newsletter).to receive(:all).and_return [newsletter]

      subject.notify_subscriber
    end
  end
end
