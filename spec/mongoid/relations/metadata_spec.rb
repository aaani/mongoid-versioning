require "spec_helper"

describe Mongoid::Relations::Metadata do
  describe "#versioned?" do

    context "when versioned is true" do

      let(:metadata) do
        described_class.new(
          name: :versions,
          relation: Mongoid::Relations::Embedded::Many,
          versioned: true
        )
      end

      it "returns true" do
        expect(metadata).to be_versioned
      end
    end

    context "when versioned is false" do

      let(:metadata) do
        described_class.new(
          name: :versions,
          relation: Mongoid::Relations::Embedded::Many,
          versioned: false
        )
      end

      it "returns false" do
        expect(metadata).not_to be_versioned
      end
    end

    context "when versioned is nil" do

      let(:metadata) do
        described_class.new(
          name: :versions,
          relation: Mongoid::Relations::Embedded::Many
        )
      end

      it "returns false" do
        expect(metadata).not_to be_versioned
      end
    end
  end
end
