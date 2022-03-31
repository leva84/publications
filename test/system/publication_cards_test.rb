# frozen_string_literal: true

require 'application_system_test_case'

class PublicationCardsTest < ApplicationSystemTestCase
  setup do
    @publication_card = publication_cards(:one)
  end

  test 'visiting the index' do
    visit publication_cards_url
    assert_selector 'h1', text: 'Publication cards'
  end

  test 'should create publication card' do
    visit publication_cards_url
    click_on 'New publication card'

    fill_in 'Count', with: @publication_card.count
    fill_in 'Interval', with: @publication_card.interval
    check 'Status' if @publication_card.status
    fill_in 'Text', with: @publication_card.text
    fill_in 'Title', with: @publication_card.title
    fill_in 'Url', with: @publication_card.url
    click_on 'Create Publication card'

    assert_text 'Publication card was successfully created'
    click_on 'Back'
  end

  test 'should update Publication card' do
    visit publication_card_url(@publication_card)
    click_on 'Edit this publication card', match: :first

    fill_in 'Count', with: @publication_card.count
    fill_in 'Interval', with: @publication_card.interval
    check 'Status' if @publication_card.status
    fill_in 'Text', with: @publication_card.text
    fill_in 'Title', with: @publication_card.title
    fill_in 'Url', with: @publication_card.url
    click_on 'Update Publication card'

    assert_text 'Publication card was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Publication card' do
    visit publication_card_url(@publication_card)
    click_on 'Destroy this publication card', match: :first

    assert_text 'Publication card was successfully destroyed'
  end
end
