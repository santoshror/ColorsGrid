class User < ApplicationRecord
has_many :square_grids
validates_presence_of :name,:ip_address

end
