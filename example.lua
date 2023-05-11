-- Using this? Name it "RbxCharacterSounds" and place it in StarterPlayerScripts
local player = game.Players.LocalPlayer
local character = player.Character

-- Had issues with the character fucking not loading in !!!!!!

function initAudio()
	if not character then
		character = player.Character or player.CharacterAdded:Wait()
	end

	character:WaitForChild("Humanoid")

	local humanoid = character.Humanoid
	local audio = require(game.ReplicatedStorage.Audio) -- Audio module

	local function onKeyframeReached(keyframeName)
		if keyframeName ~= "End" and keyframeName ~= "Keyframe" then -- don't want those
			-- instead of this we can make it unreadable 😈😈😈😈
			-- if not {End = true, Keyframe = true}[keyframeName] then
			warn("KEYFRAME NAME:" .. keyframeName)
			audio.PlaySound(keyframeName)
		end
	end

	humanoid.AnimationPlayed:Connect(function(animationTrack)
		animationTrack.KeyframeReached:Connect(onKeyframeReached)
	end)
end

initAudio()
