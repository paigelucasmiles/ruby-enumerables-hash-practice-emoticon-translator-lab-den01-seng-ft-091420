require 'yaml'
require 'pry'

def load_library(yaml)
  new_library = {}
  thing = YAML.load_file(yaml)
  thing.each do |key, values|
    if !new_library[key]
      new_library[key] = {:english => values[0], :japanese => values[1]}
    end
    p new_library
  end
end

def get_japanese_emoticon(yaml,)
end

def get_english_meaning
  # code goes here
end