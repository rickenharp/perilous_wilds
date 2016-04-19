require 'models/random_element'

class Place < RandomElement
  class Noun < RandomElement
    OPTIONS = %w(
      Arm Ash Blood Child Cinder Corpse Crystal Dagger Death Demon Devil Doom
      Eye Fear Finger Fire Foot Ghost Giant Goblin God Gold Hand Head Heart Hero
      Hope King Knave Knight Muck Mud Priest Queen Sailor Silver Skull Smoke
      Souls Spear Spirit Stone Sword Thief Troll Warrior Water Witch Wizard
    ).freeze
  end
end
