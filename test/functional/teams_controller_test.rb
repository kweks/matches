require 'test_helper'

class TeamsControllerTest < ActionController::TestCase
  setup do
    @team = teams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team" do
    assert_difference('Team.count') do
      post :create, team: { attended: @team.attended, away_team: @team.away_team, date: @team.date, home_team: @team.home_team, league: @team.league, time: @team.time }
    end

    assert_redirected_to team_path(assigns(:team))
  end

  test "should show team" do
    get :show, id: @team
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @team
    assert_response :success
  end

  test "should update team" do
    put :update, id: @team, team: { attended: @team.attended, away_team: @team.away_team, date: @team.date, home_team: @team.home_team, league: @team.league, time: @team.time }
    assert_redirected_to team_path(assigns(:team))
  end

  test "should destroy team" do
    assert_difference('Team.count', -1) do
      delete :destroy, id: @team
    end

    assert_redirected_to teams_path
  end
end
