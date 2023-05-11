local audio = {sounds = {}}

for i, child in ipairs(script:GetChildren()) do -- let's loop this shit
	if child:IsA("Sound") then
		audio.sounds[child.Name] = child -- shove the children into the container (don't arrest me, i am just a programmer)
	end
end

warn(audio.sounds["Footstep"])

function audio.PlaySound(soundName)
	local sound = audio.sounds[soundName]
	if sound then
		sound:Play()
	else
		warn("Sound not found:", soundName) -- BRO
	end
end

return audio
