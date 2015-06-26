class UserMailer < ApplicationMailer
	def registration_confirmation(contact)
		@contact = contact
		mail(to: "srinivaspklpkl@gmail.com", subject: "Yes I received your mail")
	end
end
