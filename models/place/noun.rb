require 'models/table'

class Place < Table
  class Noun < Table
    OPTIONS = RangedHash.new(
      %w(
        Arm Ash Blood Child Cinder Corpse Crystal Dagger Death Demon Devil Doom
        Eye Fear Finger Fire Foot Ghost Giant Goblin God Gold Hand Head Heart
        Hero Hope King Knave Knight Muck Mud Priest Queen Sailor Silver Skull
        Smoke Souls Spear Spirit Stone Sword Thief Troll Warrior Water Witch
        Wizard
      )
    ).freeze
  end
end
