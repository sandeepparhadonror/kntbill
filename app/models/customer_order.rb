class CustomerOrder < ApplicationRecord
    #Initial Many to Many through accssotion
    belongs_to :order
    belongs_to :customer
end
