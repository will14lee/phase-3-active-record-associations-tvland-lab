class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network
    def character
        self.characters
    end

    def networks
        self.network
    end

    def actors_list
        self.characters.map do |actors|
            "#{actors.actor.first_name} #{actors.actor.last_name}"
        end
    end
end