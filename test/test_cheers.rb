require 'nss'
require 'cheers'

class CheersTest < Test::Unit::TestCase

  #names of tests need to be test_01... etc. for rake to
  #run the test in this setup
  def test_01
    assert_equal false, true
  end
end