# require modules here
require "yaml"
require "pry"

def load_library(lib)
  # code goes here
  emotos = YAML.load_file(lib)
  #superloop through NDS emotos and change each ary to a hash
  emotos.each do |key, ary|
    emotos[key] = { :english => ary[0], :japanese => ary[1] }
  end
end

def get_japanese_emoticon(str_w)
  # code goes here
  emotos.each do |emo, dic_emo|
    if str_w == dic_emo[:english]
      return dic_emo[:english]
    end
  end
end

def get_english_meaning
  # code goes here
end