describe "rock paper scissors game engine" do
  let(:rock)     { 1 }
  let(:paper)    { 2 }
  let(:scissors) { 3 }

  it "my rock beats opponent's scissors" do
    me = rock
    op = scissors

    winner = [me, op].min

    expect(winner).to eq(me)
  end

  it "opponent's rock beats my scissors" do
    me = scissors
    op = rock

    winner = [me, op].min

    expect(winner).to eq(op)
  end
end
