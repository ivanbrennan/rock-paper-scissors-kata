require 'rock_paper_scissors'

describe RockPaperScissors do
  let(:rock)     { 1 }
  let(:paper)    { 2 }
  let(:scissors) { 3 }

  subject(:game) { RockPaperScissors }

  it "my rock beats opponent's scissors" do
    me, op = rock, scissors
    expect(game.winner(me, op)).to eq("Me")
  end

  it "opponent's rock beats my scissors" do
    me, op = scissors, rock
    expect(game.winner(me, op)).to eq("Opponent")
  end

  it "my scissors beats opponent's paper" do
    me, op = scissors, paper
    expect(game.winner(me, op)).to eq("Me")
  end

  it "opponent's scissors beats my paper" do
    me, op = paper, scissors
    expect(game.winner(me, op)).to eq("Opponent")
  end

  it "my paper beats opponent's rock" do
    me, op = paper, rock
    expect(game.winner(me, op)).to eq("Me")
  end

  it "opponent's paper beats my rock" do
    me, op = rock, paper
    expect(game.winner(me, op)).to eq("Opponent")
  end

  it "rock draws with rock" do
    me, op = rock, rock
    expect(game.winner(me, op)).to eq("Draw")
  end

  it "scissors draws with scissors" do
    me, op = scissors, scissors
    expect(game.winner(me, op)).to eq("Draw")
  end

  it "paper draws with paper" do
    me, op = paper, paper
    expect(game.winner(me, op)).to eq("Draw")
  end
end

