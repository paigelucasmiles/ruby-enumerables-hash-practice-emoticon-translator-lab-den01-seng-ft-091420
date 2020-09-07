require 'yaml'
require 'pry'

def load_library(yaml)
  new_library = {}
  thing = YAML.load_file(yaml)
  thing.each do |key, values|
    new_library[key] = {:english => values[0], :japanese => values[1]}
  end
  p new_library
end

def get_japanese_emoticon(yaml, english_emoticon)
  local_library = load_library(yaml)
  local_library.each do |key, value|
    if value[:english] == english_emoticon
      binding.pry
      p value[:japanese]
    else 
      p "Sorry, that emoticon was not found"
    end
  end
end

def get_english_meaning
  # code goes here
end