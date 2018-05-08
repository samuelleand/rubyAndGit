class GithubRepository
    attr_accessor :owner, :name, :description, :language, :url

    def initialize(owner, name, description, language, url)
        @owner = owner
        @name = name
        @description = description
        @language = language
        @url = url
    end
end