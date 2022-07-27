require 'json'

class Recipe
  attr_reader :title, :description, :ingredients, :cook_time, :featured

  def initialize(title:, description:, ingredients:, cook_time:,
                 featured: false)
    @title = title
    @description = description
    @ingredients = ingredients
    @cook_time = cook_time
    @featured = featured
  end

  def self.from_json(json_file)
    attributes = JSON.parse(File.read(json_file))
    if attributes.is_a?(Array)
      attributes.map { |parsed_hash| from_hash(parsed_hash) }
    else
      from_hash(attributes)
    end
  end

  def self.from_hash(attributes)
    Recipe.new(title: attributes['title'],
               description: attributes['description'],
               ingredients: attributes['ingredients'],
               cook_time: attributes['cook_time'],
               featured: attributes['featured'])
  end

  def to_hash
    as_hash = instance_variables.each_with_object({}) do |var, hash|
      hash[var.to_s.delete("@")] = instance_variable_get(var)
    end

    as_hash["title"] = "[Destaque] #{as_hash["title"]}" if featured
    as_hash["cook_time"] = "#{as_hash["cook_time"]} minutos" if featured

    as_hash.except!('featured')
  end

  def to_json
    to_hash.to_json
  end

  def save_to_file
    File.open('data/recipe.json', 'w+') do |f|
      f.print to_json
    end
  end
end