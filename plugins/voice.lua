do

local function run(msg, matches)


local text = matches[1]

  local b = 1

  while b ~= 0 do
    textc = text:trim()
    text,b = text:gsub(' ','.')
    
    
  if msg.to.type == 'user' then 
      return nil
      else
  local url = "http://tts.baidu.com/text2audio?lan=en&ie=UTF-8&text="..textc
  local receiver = get_receiver(msg)
  local file = download_to_file(url,'Hextor.ogg')
      send_audio('chat#id'..msg.to.id, file, ok_cb , false)
end
end
  end
return {
  description = "text to voice",
  usage = {
    "!voice [text]"
  },
  patterns = {
    "^!voice (.*)$",
    "^/voice (.*)$",
	"^#voice (.*)$",

  },
  run = run
}

end
--by Hextor Team
-- channel : @Hextor_CH
