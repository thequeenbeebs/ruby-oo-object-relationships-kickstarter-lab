class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backers = []
        ProjectBacker.all.each do |pb|
            if pb.project == self
                backers << pb.backer
            end
        end
        backers
    end
end