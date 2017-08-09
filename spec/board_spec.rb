


describe Board do

  subject(:board) { described_class.new }

  describe "attributes" do

  it {is_expected.to respond_to(:grid)}

  end

  describe "#display" do
    it "print the grid to stdout" do
      # return to output correctly when you know grid format
      expect{board.display}.to output('x').to_stdout
    end
  end

  describe "#fill_cell_at" do

    let(:row) { :top }
    let(:cell_num) { :one }
    let(:current_player) { double("PlayerOne", token: 'X') }

    it "will insert the player's token into the specified cell" do
      board.fill_cell_at(row, cell_num, current_player)
      expect(board.grid[row][cell_num]).to eq([current_player.token])
    end

  end


end
