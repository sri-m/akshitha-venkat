class Contact < ActiveRecord::Base
	validates :name, :email, :cell, :address, :presence => true
	validates :email, format: { with: /[a-z0-9.]*(@){1}[a-z0-9]*(\.){1}[a-z]{2,4}/,
    message: "only allows letters, number or periods" }
    validates :cell, length: { is: 10 }, numericality: { only_integer: true }
    after_create :send_emails
    def send_emails
    	UserMailer.registration_confirmation(self).deliver
    end
end
