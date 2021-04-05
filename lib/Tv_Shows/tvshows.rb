class Tv_Shows
    @@all = []
        attr_accessor :name, :season, :episode_number, :airdate, :airtime, :language, :summary, :rating, :schedule, :genres
    def initialize(array)
        #binding.pry
        @name = array["show"]["name"]
        @season = array["season"]
        @episode_number = array["number"]
        @airdate = array["airdate"]
        @airtime = array["airtime"]
        @language = array["show"]["language"]
        @summary = array["show"]["summary"]
        @schedule = array["show"]["schedule"]
        @genres = array["show"]["genres"]
        @@all << self
        # binding.pry
    end
    def self.new_tvshows(array)
        #  binding.pry
        array.each do |x|
            Tv_Shows.new(x)
        end
    end
   
    def self.all
        @@all
    end
end