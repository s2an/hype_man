require "spec_helper"
require "hype_man"
# frozen_string_literal: true

RSpec.describe HypeMan do
  it "has a version number" do
    expect(HypeMan::VERSION).not_to be nil
  end

  xit "does something useful" do
    expect(false).to eq(true)
  end

  describe '.set_alias' do
    context 'when the shell is Zsh' do
      before do
        allow(ENV).to receive(:[]).with('SHELL').and_return('/bin/zsh')
      end

      it 'sets the alias for "bundle exec rspec"' do
        expect { HypeMan.set_alias('bundle exec rspec', 'bundle exec rspec') }.to output("Way to test bro\n").to_stdout
      end

      it 'sets the alias for "rails db:drop"' do
        expect { HypeMan.set_alias('rails db:drop', 'rails db:drop') }.to output("do you even know how to database bro??\n").to_stdout
      end

      it 'sets the alias and outputs "escape test"' do
        expect { HypeMan.set_alias('custom_alias', 'custom_command') }.to output("escape test\n").to_stdout
      end
    end

    context 'when the shell is not supported' do
      before do
        allow(ENV).to receive(:[]).with('SHELL').and_return('/bin/unsupported')
      end

      it 'outputs "Unsupported shell. Alias not set."' do
        expect { HypeMan.set_alias('custom_alias', 'custom_command') }.to output("Unsupported shell. Alias not set.\n").to_stdout
      end
    end
  end

  describe '.hype_hype' do
    context 'when the shell is Zsh' do
      before do
        allow(ENV).to receive(:[]).with('SHELL').and_return('/bin/zsh')
      end

      it 'appends the command to ~/.zshrc' do
        expect { HypeMan.hype_hype('custom_command') }.not_to raise_error
      end
    end

    context 'when the shell is not supported' do
      before do
        allow(ENV).to receive(:[]).with('SHELL').and_return('/bin/unsupported')
      end

      it "outputs II: Unsupported shell" do
        expect { HypeMan.hype_hype('custom_command') }.to output("II: Unsupported shell.\n").to_stdout
      end
    end
  end
end