def winner(me, op)
  results = {
    1 => "Me",
    2 => "Opponent"
  }

  results[(me - op) % 3]
end

describe "rock paper scissors game engine" do
  let(:rock)     { 1 }
  let(:paper)    { 2 }
  let(:scissors) { 3 }

  it "my rock beats opponent's scissors" do
    me = rock
    op = scissors

    expect(winner(me, op)).to eq("Me")
  end

  it "opponent's rock beats my scissors" do
    me = scissors
    op = rock

    expect(winner(me, op)).to eq("Opponent")
  end

  it "my scissors beats opponent's paper" do
    me = scissors
    op = paper

    expect(winner(me, op)).to eq("Me")
  end

  it "opponent's scissors beats my paper" do
    me = paper
    op = scissors

    expect(winner(me, op)).to eq("Opponent")
  end
end

