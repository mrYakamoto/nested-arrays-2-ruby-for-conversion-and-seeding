require_relative '../tic_tac_toe'


describe 'generating a tic-tac-toe board' do
  let(:board){generate_tic_tac_toe}

  it 'has 3 rows' do
    rows = board.count
    expect(rows).to eq 3
  end

  it 'each row has 3 columns' do
    columns = board.all?{|row| row.length == 3}
    expect(columns).to eq true
  end

  it 'is a random board' do
    new_board = generate_tic_tac_toe
    expect(new_board).not_to eq board
  end

  it "is entirely populated with X's and O's" do
    xo = board.all?{|row|row.all?{|cell| cell == 'X'|| cell == 'O'}}
    expect(xo).to eq true
  end
end
