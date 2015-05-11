require "rails_helper"

RSpec.describe NewsletterMailer, type: :mailer do
  describe '#notification' do
    subject { described_class }
    let(:user) { double 'Newsletter', email: 'lucas@email.com'  }
    let(:article) { double 'Article', id: 1, title: 'foo', body: 'body' }

    let(:mail) { subject.notification(user, article) }

    it 'renders the receiver email' do
      expect(mail.to).to eql([user.email])
    end

    it 'assigns @confirmation_url' do
      expect(mail.body.encoded).to match("http://example.com/articles/#{article.id}")
    end
  end
end
