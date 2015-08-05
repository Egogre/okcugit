gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/finder'

class OkcugitFinderTest < Minitest::Test
  attr_reader :ok

  def setup
    @ok = Okcugit::Finder.new('turingschool/challenges')
  end

  def test_it_exhists
    assert ok
  end
  # ruby ./okcugit turingschool/challenges
  def test_it_goes_to_designated_page
    expected = "<!DOCTYPE html>"

    assert_equal expected, ok.get_page_source.split('\n')[0]
  end
  #go to github.com/ARGV[0]
  #find the SSH copy it
  #run git clone #{SSH}
  #cd to path
  #git log
  #select all Authors and their emails (<inbetween>)
  #sort alphabetically by Authors
end
