class Show < ActiveRecord::Base

    def self.highest_rating
        self.maximum('rating')
    end

    def self.most_popular_show
        highest = self.highest_rating
        self.find_by(rating:highest)
    end

    def self.lowest_rating
        self.minimum('rating')
    end

    def self.least_popular_show
        lowest = self.minimum('rating')
        self.find_by(rating:lowest)
    end

    def self.ratings_sum
        self.sum(:rating)
    end

    def self.popular_shows
        #returns an array of all the shows that have a rating greater than 5  - use where
        self.where("rating > 5")
    end

    def self.shows_by_alphabetical_order
        self.order("name")
    end
end