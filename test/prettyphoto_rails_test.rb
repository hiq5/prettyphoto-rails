require 'test_helper'

class PrettyphotoRailsTest < ActionDispatch::IntegrationTest
  teardown { clean_sprockets_cache }

  test "engine is loaded" do
    assert_equal ::Rails::Engine, PrettyphotoRails::Engine.superclass
  end

  test "stylesheet is served" do
    get "/assets/prettyphoto-rails.css"
    assert_response :success
  end

  test "javascripts are served" do
    get "/assets/prettyphoto-rails.js"
    assert_response :success

    get "/assets/prettyphoto-rails-dev.js"
    assert_response :success
  end

  test "stylesheet contain asset pipeline references to images" do
    get "/assets/prettyphoto-rails.css"

    # dark_rounded
    assert_match "/assets/prettyPhoto/dark_rounded/btnNext.png", response.body
    assert_match "/assets/prettyPhoto/dark_rounded/btnPrevious.png", response.body
    assert_match "/assets/prettyPhoto/dark_rounded/contentPattern.png", response.body
    assert_match "/assets/prettyPhoto/dark_rounded/loader.gif", response.body
    assert_match "/assets/prettyPhoto/dark_rounded/sprite.png", response.body

    # dark_square
    assert_match "/assets/prettyPhoto/dark_square/btnNext.png", response.body
    assert_match "/assets/prettyPhoto/dark_square/btnPrevious.png", response.body
    assert_match "/assets/prettyPhoto/dark_square/loader.gif", response.body
    assert_match "/assets/prettyPhoto/dark_square/sprite.png", response.body

    # default theme
    assert_match "/assets/prettyPhoto/default/sprite.png", response.body
    assert_match "/assets/prettyPhoto/default/sprite_x.png", response.body
    assert_match "/assets/prettyPhoto/default/sprite_y.png", response.body
    assert_match "/assets/prettyPhoto/default/sprite_next.png", response.body
    assert_match "/assets/prettyPhoto/default/sprite_prev.png", response.body
    assert_match "/assets/prettyPhoto/default/default_thumb.png", response.body
    assert_match "/assets/prettyPhoto/default/loader.gif", response.body

    # facebook
    assert_match "/assets/prettyPhoto/facebook/btnNext.png", response.body
    assert_match "/assets/prettyPhoto/facebook/btnPrevious.png", response.body
    assert_match "/assets/prettyPhoto/facebook/contentPatternBottom.png", response.body
    assert_match "/assets/prettyPhoto/facebook/contentPatternLeft.png", response.body
    assert_match "/assets/prettyPhoto/facebook/contentPatternRight.png", response.body
    assert_match "/assets/prettyPhoto/facebook/contentPatternTop.png", response.body
    assert_match "/assets/prettyPhoto/facebook/default_thumbnail.gif", response.body
    assert_match "/assets/prettyPhoto/facebook/loader.gif", response.body
    assert_match "/assets/prettyPhoto/facebook/sprite.png", response.body

    # light_rounded
    assert_match "/assets/prettyPhoto/light_rounded/btnNext.png", response.body
    assert_match "/assets/prettyPhoto/light_rounded/btnPrevious.png", response.body
    assert_match "/assets/prettyPhoto/light_rounded/loader.gif", response.body
    assert_match "/assets/prettyPhoto/light_rounded/sprite.png", response.body

    # light_square
    assert_match "/assets/prettyPhoto/light_square/btnNext.png", response.body
    assert_match "/assets/prettyPhoto/light_square/btnPrevious.png", response.body
    assert_match "/assets/prettyPhoto/light_square/sprite.png", response.body

  end

  private

  def clean_sprockets_cache
    FileUtils.rm_rf File.expand_path("../dummy/tmp",  __FILE__)
  end

end
