class Acronym
    def self.abbreviate(value)
        arr = value.split(/[^A-Za-z]/)
        result = ''    
        for val in arr
            next if val[0].nil?
            result += val[0].upcase
        end    
        result
    end
end