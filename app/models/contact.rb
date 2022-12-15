class Contact < ApplicationRecord
  after_create :message_send
  def message_send
    UserMailer.message_send(self).deliver_now
  end
end
