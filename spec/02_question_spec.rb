require 'spec_helper'

RSpec.describe Surveyor::Question do
  subject { described_class.new(title: "Hello World") }

  it "has a title" do
    expect(subject.title).to eq("Hello World")
  end
end
