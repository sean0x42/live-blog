# frozen_string_literal: true

require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test 'Should not save without a title' do
    article = Article.new
    assert_not article.save
  end

  test 'Must have minimum of 5 character in title' do
    article = articles(:fewerthanfive)
    assert_not article.save
  end
end
