require './lib/okcugit'

class Finder < Okcugit
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def get_page_source
    open('https://www.github.com/#{path}') 
  end

end
