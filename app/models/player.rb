class Player < ActiveRecord::Base
    belongs_to :team
    belongs_to :position 
end 