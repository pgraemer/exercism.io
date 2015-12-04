bob = {}

local function is_silent(text) 
    return text == nil or string.len(text) == 0
end

local function is_shouting(text) 
    return string.upper(text) == text
end

local function is_question(text)
    return string.sub(text, -1) == '?'
end

function bob.hey(text)
  if is_silent(text)   then return 'Fine, be that way.' end
  if is_shouting(text) then return 'Whoa, chill out!'   end
  if is_question(text) then return 'Sure'               end
  return 'Whatever'
end  

return bob
