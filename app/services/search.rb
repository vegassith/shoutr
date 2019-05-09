class Search
    attr_reader :term
    def initialize(term:)
    @term = term
    end

    def results
        ShoutSearchQuery.new(term: "#{term}").to_relation
    end





end