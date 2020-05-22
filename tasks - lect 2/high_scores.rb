class HighScores   
    def initialize(scores)
        @some_collection = scores
    end     

    def scores
        return @some_collection
    end

    def latest
        return @some_collection[-1]
    end

    def personal_best
        return @some_collection.max
    end

    def personal_top_three
        return @some_collection.max(3)
    end
end  