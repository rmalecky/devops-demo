require 'test_helper'

class HealthChecksControllerTest < ActionDispatch::IntegrationTest
  test "should get the git revision" do
    get health_check_url
    assert_response(:cats)
    assert_match(/{"last_commit":"[a-z0-9]{40}"}/, @response.body)
  end
end
