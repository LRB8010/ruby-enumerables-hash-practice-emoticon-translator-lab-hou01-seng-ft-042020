require 'pry'
require 'yaml'

def load_library(file_path)
  response = {}
    library = YAML.load_file(file_path)
    library.each do |names, emoticons|
      response[names] = {:english => "#{emoticons[0]}", :japanese => "#{emoticons[1]}"}
        end
        response
  end

def get_japanese_emoticon(file_path,emoticon)
  library = load_library(file_path)
  response = nil
  library.each do |name, emoticons|
    english = emoticons[:english]
    japanese = emoticons[:japanese]
    binding.pry
    if emoticon == english
      response = japanese
    end
  end
  if response == nil
    return "Sorry"
  else
    return response
  end
end
  # code goes here
