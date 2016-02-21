class Person < ActiveRecord::Base
    #validate_presence_of :firstname, :lastname #ensures they're not empty
    validates :firstname, presence: true
    validates :surname, presence: true
end
