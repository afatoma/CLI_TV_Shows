class API
    def self.get_Tv_Shows(tvshows)
        # make sure to add a begin rescue incase of errors or nil returns
        url = "http://api.tvmaze.com/schedule?country=US&date=2014-12-01"
        response = HTTParty.get(url)
        binding.pry
    end
end