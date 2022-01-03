require 'rails_helper'

RSpec.describe "movies/show", type: :view do
  before(:each) do
    @movie = assign(:movie, Movie.create!(
      title: "Title",
      image_url: "Image Url",
      trailer_url: "Trailer Url",
      movie_url: "Movie Url",
      status: 2,
      re: "Re"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Image Url/)
    expect(rendered).to match(/Trailer Url/)
    expect(rendered).to match(/Movie Url/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Re/)
  end
end
