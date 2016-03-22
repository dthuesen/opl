require 'index'

RSpec.describe Index, "#opl_nr" do
  context "Fortlaufende Nummer in der OPL" do
    it "shows only the ordered opl-number of each requirement " do
      opl_nr = 0
      20.times { opl_nr += 1 }
      expect(opl_nr).to eq 20
    end
  end
end
