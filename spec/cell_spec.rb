describe Cell do

  let (:cell) { Cell.new }

  describe "#initialise" do
    it "is initialised with an empty string as default" do
      expect(cell.value).to eq ""
    end
  end

end
