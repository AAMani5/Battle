describe "entering and submitting player names", :type => :feature do

  it "allows name entry and submission" do
    sign_in_and_play
    expect(page).to have_content('Dave vs. Mittens')
  end
end
