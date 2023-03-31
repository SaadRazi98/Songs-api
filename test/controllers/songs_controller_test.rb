require "test_helper"

class SongsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/songs.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Song.count, data.length
  end

  test "create" do
    assert_difference "Song.count", 1 do
      post "/songs.json", params: { title: "Under Pressure", artist: "Logic", year: 2014 }
      assert_response 200
    end
  test "show" do
    get "/songs/#{Song.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "title", "artist", "year","created_at","updated_at"], data.keys
  end 

  test "update" do
    photo = Song.first
    patch "/songs/#{song.id}.json", params: { title: "Updated title" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated title", data["title"]
  end

end
