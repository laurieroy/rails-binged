require 'rails_helper'

RSpec.describe "movies/new", type: :view do
  before(:each) do
    assign(:movie, Movie.new(
      title: "MyString",
      image_url: "MyString",
      trailer_url: "MyString",
      movie_url: "MyString",
      status: 1,
      re: "MyString"
    ))
  end

  it "renders new movie form" do
    render

    assert_select "form[action=?][method=?]", movies_path, "post" do

      assert_select "input[name=?]", "movie[title]"

      assert_select "input[name=?]", "movie[image_url]"

      assert_select "input[name=?]", "movie[trailer_url]"

      assert_select "input[name=?]", "movie[movie_url]"

      assert_select "input[name=?]", "movie[status]"

      assert_select "input[name=?]", "movie[re]"
    end
  end
end
