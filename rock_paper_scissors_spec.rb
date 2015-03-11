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
    me, op = rock, scissors
    expect(winner(me, op)).to eq("Me")
  end

  it "opponent's rock beats my scissors" do
    me, op = scissors, rock
    expect(winner(me, op)).to eq("Opponent")
  end

  it "my scissors beats opponent's paper" do
    me, op = scissors, paper
    expect(winner(me, op)).to eq("Me")
  end

  it "opponent's scissors beats my paper" do
    me, op = paper, scissors
    expect(winner(me, op)).to eq("Opponent")
  end

  it "my paper beats opponent's rock" do
    me, op = paper, rock
    expect(winner(me, op)).to eq("Me")
  end
end

