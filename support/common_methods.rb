require 'yaml'

def data_file
  YAML.load(File.open('support/testdata.yml'))
end




