class HighScores   
    def initialize(scores)
        @some_collection = scores
    end     

    def scores
        @some_collection
    end

    def latest
        @some_collection[-1]
    end

    def personal_best
        @some_collection.max
    end

    def personal_top_three
        @some_collection.max(3)
    end
end  