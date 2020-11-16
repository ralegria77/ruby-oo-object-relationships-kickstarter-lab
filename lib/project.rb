class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        joiners_array = ProjectBacker.all.select { |joiner| joiner.project == self}     
        projects_array = joiners_array.map { |joiner| joiner.backer}
        projects_array
    end

end