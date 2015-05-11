class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy

  validates :body, presence: true

  after_save :notify_subscriber

  def notify_subscriber
    Newsletter.all.each do |user|
      NewsletterMailer.notification(user, self).deliver_later
    end
  end
end
