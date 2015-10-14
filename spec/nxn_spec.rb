require "spec_helper"

describe "nxn" do
  it "handles 1x1 array" do
    expect(x(1)).to eq [[1]]
  end

  it "handles 2x2 array" do
    expect(x(2)).to eq [[1,1],
                        [1,1]]
  end

  it "handles 3x3 array" do
    expect(x(3)).to eq [[1,0,1],
                        [0,1,0],
                        [1,0,1]]
  end

  it "handles 4x4 array" do
    expect(x(4)).to eq [[1,0,0,1],
                        [0,1,1,0],
                        [0,1,1,0],
                        [1,0,0,1]]
  end

  it "handles 5x5 array" do
    expect(x(5)).to eq [[1,0,0,0,1],
                        [0,1,0,1,0],
                        [0,0,1,0,0],
                        [0,1,0,1,0],
                        [1,0,0,0,1]]
  end

  it "handles 6x6 array" do
    expect(x(6)).to eq [[1,0,0,0,0,1],
                        [0,1,0,0,1,0],
                        [0,0,1,1,0,0],
                        [0,0,1,1,0,0],
                        [0,1,0,0,1,0],
                        [1,0,0,0,0,1]]
  end

  it "handles 13x13 array" do
    expect(x(13)).to eq [[1,0,0,0,0,0,0,0,0,0,0,0,1],
                         [0,1,0,0,0,0,0,0,0,0,0,1,0],
                         [0,0,1,0,0,0,0,0,0,0,1,0,0],
                         [0,0,0,1,0,0,0,0,0,1,0,0,0],
                         [0,0,0,0,1,0,0,0,1,0,0,0,0],
                         [0,0,0,0,0,1,0,1,0,0,0,0,0],
                         [0,0,0,0,0,0,1,0,0,0,0,0,0],
                         [0,0,0,0,0,1,0,1,0,0,0,0,0],
                         [0,0,0,0,1,0,0,0,1,0,0,0,0],
                         [0,0,0,1,0,0,0,0,0,1,0,0,0],
                         [0,0,1,0,0,0,0,0,0,0,1,0,0],
                         [0,1,0,0,0,0,0,0,0,0,0,1,0],
                         [1,0,0,0,0,0,0,0,0,0,0,0,1]]
  end  

  it "handles 0x0 array" do
    expect(x(0)).to eq []
  end
end

def x(n)
  n.times.map do |i|
    Array.new(n, 0).tap { |a| a[i] = a[-1 - i] = 1 }
  end
end
