require_relative 'helper'

class TestCheersIntegration < MiniTest::Unit::TestCase

  def test_a_name_with_no_vowels
    shell_output = ""
    IO.popen('ruby cheers.rb', 'r+') do |pipe|
      pipe.puts("brt")
      pipe.close_write
      shell_output = pipe.read
    end
    expected_output = <<EOS
What's your name?
Give me a.. B
Give me an.. R
Give me a.. T
BRT is GRAND!
EOS
    #I'm not sure if this should be
    #  .... expected_output, shell_output
    # or vice versa order
    assert_equal expected_output, shell_output
  end
end