require 'test_helper'

module Vedeu
  class ViewTest < View
    def output
      { interfaces: [] }
    end
  end

  describe View do
    describe '.render' do
      it 'returns' do
        ViewTest.render.must_equal([])
      end
    end
  end
end
