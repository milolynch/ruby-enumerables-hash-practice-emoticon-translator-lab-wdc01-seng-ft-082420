# require modules here
require "yaml"
require "pry"

def load_library(lib)
  # code goes here
  emotos = YAML.load_file(lib)
  #superloop through NDS emotos and change each ary to a hash
  emotos.each do |key, ary|
    ary 
    emotos[key] = {ary[0] => ary[1]}
  end
  binding.pry
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end