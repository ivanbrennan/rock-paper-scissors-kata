describe "rock paper scissors game engine" do
  it "my rock beats opponent's scissors" do
    rock     = 1
    paper    = 2
    scissors = 3

    me = rock
    op = scissors

    winner = [me, op].min

    expect(winner).to eq(me)
  end

  it "opponent's rock beats my scissors" do
    rock     = 1
    paper    = 2
    scissors = 3

    me = scissors
    op = rock

    winner = [me, op].min

    expect(winner).to eq(op)
  end
end
