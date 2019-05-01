require 'test_helper'

class GameTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_team = game_teams(:one)
  end

  test "should get index" do
    get game_teams_url, as: :json
    assert_response :success
  end

  test "should create game_team" do
    assert_difference('GameTeam.count') do
      post game_teams_url, params: { game_team: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show game_team" do
    get game_team_url(@game_team), as: :json
    assert_response :success
  end

  test "should update game_team" do
    patch game_team_url(@game_team), params: { game_team: {  } }, as: :json
    assert_response 200
  end

  test "should destroy game_team" do
    assert_difference('GameTeam.count', -1) do
      delete game_team_url(@game_team), as: :json
    end

    assert_response 204
  end
end
