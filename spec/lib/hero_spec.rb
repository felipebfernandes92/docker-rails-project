require 'spec_helper'
require 'hero'

describe Hero do
  hero = Hero.new

  context 'has an armor' do
    it 'has a sword' do
      expect(hero.weapon).to eq('sword')
    end

    it 'has more than 1000 HP points' do
      expect(hero.hp).to be > 1000
    end
  end
end