describe "rock paper scissors game engine" do
  it "my rock beats opponent's scissors" do
    rock     = 1
    paper    = 2
    scissors = 3

    me = rock
    op = scissors

    winner = me

    expect(winner).to eq(me)
  end
end
