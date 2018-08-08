require 'spec_helper'

RSpec.describe Surveyor::RatingQuestion do
  subject { described_class.new(title: "Hello World") }

  it 'has a title' do
    expect(subject.title).to eq("Hello World")
  end

  context 'valid_answer?' do
    it "true when 1" do
      expect(subject.valid_answer?(1)).to eq(true)
    end

    it "true when 2" do
      expect(subject.valid_answer?(2)).to eq(true)
    end

    it "true when 3" do
      expect(subject.valid_answer?(3)).to eq(true)
    end

    it "true when 4" do
      expect(subject.valid_answer?(4)).to eq(true)
    end

    it "true when 5" do
      expect(subject.valid_answer?(5)).to eq(true)
    end

    it "false when 6" do
      expect(subject.valid_answer?(6)).to eq(false)
    end

    it "false when -1" do
      expect(subject.valid_answer?(-1)).to eq(false)
    end
  end
end
