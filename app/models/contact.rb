class Contact < ActiveRecord::Base
    #attributes for contact already specified in the db file
    #check schema file
    
    validates :name, presence: true
    validates :email, presence: true
    validates :comments, presence: true #making sure all fields are filled in on the form
end
