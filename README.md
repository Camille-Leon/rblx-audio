# rblx-audio
Very easy to use system for playing audio along with animations in roblox.

HOW TO USE:
- Insert the module wherever you'd like, I personally choose replicatedstorage.
- Add sounds as children to the module, they can be named whatever you'd like.
- Require the module in any script. I choose to always name the module "audio" when requiring it.
- Call `audio.PlaySound(soundName)` to play a sound. Make sure soundName is the name of a sound you added as a child to the module
- That's it!

EXAMPLE: 
An example script using this is included. It's a custom audio system for the player character, the usage is easy. Just name any animation keyframe the name of the sound you'd like to play (Sound has to be a child of the module).
