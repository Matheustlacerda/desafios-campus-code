require 'json'

class Recipe
    attr_reader :title, :description, :ingredients, :cook_time, :featured
      
    def initialize(title:, description:, ingredients:, cook_time:, featured:)
        @title = title
        @description = description
        @ingredients = ingredients
        @cook_time = cook_time
        @featured = featured
    end  

    def self.from_json(caminho)
      file = File.read(caminho)
      receita = JSON.parse(file)
      Recipe.new(title:receita['title'], description:receita['description'],ingredients:receita['ingredients'],cook_time:receita['cook_time'], featured:receita['featured'] )   
  end
    
end