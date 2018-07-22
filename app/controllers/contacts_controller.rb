class ContactsController < ApplicationController
    def new #views file has to correspond with this name
        @contact = Contact.new #everytime somebody pulls up the contacts form, rails will generate a new contact object
        #the @contact is an "instance variable"
    end
    
    def create #method to save user input on the contact form
        @contact = Contact.new(contact_params) #contact_params is from the private field below
        if @contact.save
            redirect_to new_contact_path, notice: "Message sent."
        else
            redirect_to new_contact_path, notice: "Error occurred. Please ensure all fields are filled in."
        end
    end
    
    private #security feature to ensure correct attributes are entered I guess?
        def contact_params
            params.required(:contact).permit(:name, :email, :comments)
        end
end

=begin 
The "def create" saves a new contact object. The if statement is run to check if
the contact message was saved, and if so redirect the user to the contact page
with a message stating that the message was sent successfully.

The else states that if the message failed to send, then send the user to the
contact form page and notify the user that the message failed to send.
=end
