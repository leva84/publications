# frozen_string_literal: true

require 'test_helper'

class PublicationCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @publication_card = publication_cards(:one)
  end

  test 'should get index' do
    get publication_cards_url
    assert_response :success
  end

  test 'should get new' do
    get new_publication_card_url
    assert_response :success
  end

  test 'should create publication_card' do
    assert_difference('PublicationCard.count') do
      post publication_cards_url,
           params: { publication_card: { count: @publication_card.count, interval: @publication_card.interval,
                                         status: @publication_card.status, text: @publication_card.text, title: @publication_card.title, url: @publication_card.url } }
    end

    assert_redirected_to publication_card_url(PublicationCard.last)
  end

  test 'should show publication_card' do
    get publication_card_url(@publication_card)
    assert_response :success
  end

  test 'should get edit' do
    get edit_publication_card_url(@publication_card)
    assert_response :success
  end

  test 'should update publication_card' do
    patch publication_card_url(@publication_card),
          params: { publication_card: { count: @publication_card.count, interval: @publication_card.interval,
                                        status: @publication_card.status, text: @publication_card.text, title: @publication_card.title, url: @publication_card.url } }
    assert_redirected_to publication_card_url(@publication_card)
  end

  test 'should destroy publication_card' do
    assert_difference('PublicationCard.count', -1) do
      delete publication_card_url(@publication_card)
    end

    assert_redirected_to publication_cards_url
  end
end
