require 'rails_helper'

RSpec.feature "user logs in" do
  scenario "using twitter oauth2" do
    mock_auth_hash
    visit root_path
    expect(page).to have_link("Twitter")
    click_link "Twitter"
    expect(page).to have_content("John Doe")
    expect(page).to have_link("Logout")
  end

  def mock_auth_hash
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[:twitter] = OmniAuth::AuthHash.new({
        'provider' => 'twitter',
        'uid' => '123456',
        'user_info' => {'name' => 'John Doe'},
        'credentials' => {
            'token' => 'abcdefg12345',
            'secret' => '12345abcdefg'
          }
    })
  end  
end