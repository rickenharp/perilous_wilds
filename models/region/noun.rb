class Region < Table
  class Noun < Table
    OPTIONS = RangedHash.new(
      %w(
        Ash Bone Darkness Dead Death Desolation Despair Devil Doom Dragon Fate
        Fear Fire Fury Ghost Giant God Gold Heaven Hell Honor Hope Horror King
        Life Light Lord Mist Peril Queen Rain Refuge Regret Savior Shadow Silver
        Skull Sky Smoke Snake Sorrow Storm Sun Thorn Thunder Traitor Troll
        Victory Witch
      )
    ).freeze
  end
end
