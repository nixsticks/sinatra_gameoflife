require_relative '../lib/cell'
require_relative '../lib/state'
require_relative '../lib/grid'

describe Cell do
  context 'alive' do
    let(:grid) {Grid.new(4,4)}
    let(:cell) {Cell.new(grid, 2, 2, Alive.new)}

    context 'with two or three live neighbors' do
      it 'should remain alive' do
        cell1 = Cell.new(grid, 2, 1, Alive.new)
        cell2 = Cell.new(grid, 2, 3, Alive.new)

        cell.compute_state
        cell.transition_state
        expect(cell.alive?).to be_true
      end
    end

    context 'with more than three live neighbors' do
      it 'should die' do
        cell1 = Cell.new(grid, 2, 1, Alive.new)
        cell2 = Cell.new(grid, 2, 3, Alive.new)
        cell3 = Cell.new(grid, 3, 3, Alive.new)
        cell4 = Cell.new(grid, 1, 3, Alive.new)

        cell.compute_state
        cell.transition_state
        expect(cell.alive?).to be_false
      end
    end

    context 'with fewer than two live neighbors' do
      it 'should die' do
        cell1 = Cell.new(grid, 2, 1, Alive.new)

        cell.compute_state
        cell.transition_state
        expect(cell.alive?).to be_false
      end
    end
  end

  context 'dead' do
    let(:grid) {Grid.new(4,4)}
    let(:cell) {Cell.new(grid, 2, 2, Dead.new)}

    context 'with 3 live neighbors' do
      it 'should come back to life' do
        cell1 = Cell.new(grid, 2, 1, Alive.new)
        cell2 = Cell.new(grid, 2, 3, Alive.new)
        cell3 = Cell.new(grid, 3, 3, Alive.new)

        cell.compute_state
        cell.transition_state
        expect(cell.alive?).to be_true
      end
    end

    context 'with not enough live neighbors' do
      it 'should stay dead' do
        cell1 = Cell.new(grid, 2, 1, Alive.new)
        cell2 = Cell.new(grid, 2, 3, Alive.new)

        cell.compute_state
        cell.transition_state
        expect(cell.alive?).to be_false
      end
    end
  end
end

describe Grid do
  let(:grid) {Grid.new(4, 4)}

  it 'should keep track of all its cells' do
    cell1 = Cell.new(grid, 2, 1, Alive.new)
    cell2 = Cell.new(grid, 2, 3, Alive.new)

    expect(grid.cells.values).to include(cell1)
    expect(grid.cells.values).to include(cell2)
  end

  it 'should correctly create the next generation' do
    cell1 = Cell.new(grid, 2, 1, Alive.new)
    cell2 = Cell.new(grid, 2, 3, Alive.new)

    grid.next_generation
    expect(grid.cells["2,1"].alive?).to be(false)
    expect(grid.cells["2,3"].alive?).to be(false)
  end
end