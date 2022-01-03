require 'rails_helper'

RSpec.describe "movies/edit", type: :view do
  before(:each) do
    @movie = assign(:movie, Movie.create!(
      title: "MyString",
      image_url: "MyString",
      trailer_url: "MyString",
      movie_url: "MyString",
      status: 1,
      re: "MyString"
    ))
  end

  it "renders the edit movie form" do
    render

    assert_select "form[action=?][method=?]", movie_path(@movie), "post" do

      assert_select "input[name=?]", "movie[title]"

      assert_select "input[name=?]", "movie[image_url]"

      assert_select "input[name=?]", "movie[trailer_url]"

      assert_select "input[name=?]", "movie[movie_url]"

      assert_select "input[name=?]", "movie[status]"

      assert_select "input[name=?]", "movie[re]"
    end
  end
end
