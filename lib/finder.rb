require './lib/okcugit'
require 'git'

class Finder < Okcugit
  attr_reader :path, :g, :working_dir

  def initialize(path)
    @path = path
    @working_dir = 'https://www.github.com/'
    # @g = Git.open("#{working_dir}#{path}", :log => Logger.new(STDOUT))
  end

  def get_page_source
    g.log[0]
  end

  def open_url
    `open #{working_dir}#{path}`
  end

  
end
