feature "one of the players dies" do
  it "attack player 2 and get confirmation" do
    sign_in_and_play
    10.times do
      click_button("attack")
      click_button("okay")
    end
    click_button("attack")
    expect(page).to have_content("Mittens: Good Luck next time")
  end

  it "allows us to return to /play" do
    sign_in_and_play
    10.times do
      click_button("attack")
      click_button("okay")
    end
    click_button("attack")
    click_button("re-try")
    expect(page).to have_content("Player 1")
  end
end
