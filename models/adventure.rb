require 'adventure/title'
require 'adventure/mission'
require 'adventure/hook'
require 'adventure/antagonist'
require 'adventure/ally'
require 'adventure/complication'
require 'adventure/obstacle'
require 'adventure/twist'
require 'adventure/reward'

class Adventure
  def initialize(random = Random.new)
    @random = random
  end

  def roll
    self
  end

  def title
    Adventure::Title.new(@random).roll
  end

  def mission
    Adventure::Mission.new(@random).roll
  end

  def hook
    Adventure::Hook.new(@random).roll
  end

  def antagonist
    Adventure::Antagonist.new(@random).roll
  end

  def ally
    Adventure::Ally.new(@random).roll
  end

  def complication
    Adventure::Complication.new(@random).roll
  end

  def obstacle
    Adventure::Obstacle.new(@random).roll
  end

  def twist
    Adventure::Twist.new(@random).roll
  end

  def reward
    Adventure::Reward.new(@random).roll
  end
end
