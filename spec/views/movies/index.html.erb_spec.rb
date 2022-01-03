require 'rails_helper'

RSpec.describe "movies/index", type: :view do
  before(:each) do
    assign(:movies, [
      Movie.create!(
        title: "Title",
        image_url: "Image Url",
        trailer_url: "Trailer Url",
        movie_url: "Movie Url",
        status: 2,
        re: "Re"
      ),
      Movie.create!(
        title: "Title",
        image_url: "Image Url",
        trailer_url: "Trailer Url",
        movie_url: "Movie Url",
        status: 2,
        re: "Re"
      )
    ])
  end

  it "renders a list of movies" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Image Url".to_s, count: 2
    assert_select "tr>td", text: "Trailer Url".to_s, count: 2
    assert_select "tr>td", text: "Movie Url".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Re".to_s, count: 2
  end
end
