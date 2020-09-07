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
  local_library.each do |lang, emoticon|
    if emoticon == english_emoticon
      p lang
end

def get_english_meaning
  # code goes here
end