require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Should not save without a title" do
    article = Article.new
    assert_not article.save
  end

  test "Must have minimum of 5 character in title" do
    article = Article.new title:articles(:fewerthanfive).title
    assert_not article.save
  end

end
