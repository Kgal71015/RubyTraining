class Acronym
    def self.abbreviate(value)
        arr = value.split(' ')
        result = ''
        for val in arr
            if val['-']
                vals = val.split('-')
                if val[0] == nil or val[1] == nil
                    next
                end
                result += vals[0][0].upcase
                result += vals[1][0].upcase
                next
            end
            result += val[0].upcase
        end
        return result
    end
end