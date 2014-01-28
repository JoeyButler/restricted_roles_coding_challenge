require 'test_helper'

class RoleTest < ActiveSupport::TestCase

  test "should be able to add Patrick Stewart to the role of 'Actor'" do
    assert people(:patrick_stewart).add_role!(roles(:actor))
  end

  test "should not be able to add Will Wheaton to the role of 'Camera Person'" do
    assert_raise ActiveRecord::RecordInvalid do
      people(:will_wheaton).add_role!(roles(:camera_person))
    end
  end

  test "should be able to add Joss Whedon to the role of 'Writer'" do
    assert people(:joss_whedon).add_role!(roles(:writer))
  end

  test "should not be able to add Matt Groening to the role of 'stuntperson'" do
    assert_raise ActiveRecord::RecordInvalid do
      people(:matt_groening).add_role!(roles(:stuntperson))
    end
  end

  test "should be able to add Michael Matteson to the role of 'key grip'" do
    assert people(:michael_matteson).add_role!(roles(:key_grip))
  end

  test "should not be able to add Jimmy Hoffa to the role of 'production assistant'" do
    assert_raise ActiveRecord::RecordInvalid do
      people(:matt_groening).add_role!(roles(:stuntperson))
    end
  end

end
