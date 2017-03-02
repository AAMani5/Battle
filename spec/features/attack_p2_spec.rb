feature "attack other player" do
  it "attack player 2 and get confirmation" do
    sign_in_and_play
    click_button("attack")
    expect(page).to have_content("Mittens: 50HP")
  end
end
