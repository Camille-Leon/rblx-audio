# rblx-audio
Very easy to use system for playing audio along with animations in roblox.

HOW TO USE:
- Insert the module wherever you'd like, I personally choose replicatedstorage.
- Add sounds as children to the module, they can be named whatever you'd like.
- Require the module in any script. I choose to always name the module "audio" when requiring it.
- Call `audio.PlaySound(soundName)` to play a sound. Make sure soundName is the name of a sound you added as a child to the module
- That's it!

(When I ask for the sounds to be a child of the script, I mean like this)
![image](https://github.com/Camille-Leon/rblx-audio/assets/99615794/554063b8-b3ad-4aba-bd9e-57363f9c40f7)

EXAMPLE: 
An example script using this is included. It's a custom audio system for the player character, the usage is easy. Just name any animation keyframe the name of the sound you'd like to play (Sound has to be a child of the module).

NOTE: There's a lot of stupid comments and print() or warn() thingies, feel free to remove those lol. I'm not a pro, and I just leave 'em in.
