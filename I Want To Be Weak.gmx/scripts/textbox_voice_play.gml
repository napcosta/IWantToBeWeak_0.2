//textbox_voice_play(index, speed mode)
//gets the sound to play and plays it
var temp_voice, temp_speed;

temp_voice=argument0;
temp_speed=argument1;

//with the current sound effects, if you play it every step, it sounds terrible.
//so, checking the speed and only playing it on certain steps makes it easier on the ears.
switch(temp_speed)
{
  case 1: if (current_chr mod 4!=0) {return (1);} break;
  case 4: if (current_chr mod 2!=0) {return (1);} break;
  case 12: if (textbox_specialchar_check(string_char_at(output_text,current_chr))) {return (1);} break;
}

switch(temp_voice)
{
  case 0: /*no sound is played*/ break;
  case 1: sound_play(snd_voicelow); break;
  case 2: sound_play(snd_voicemed); break;
  case 3: sound_play(snd_voicehigh); break;
  case 4: sound_play(snd_voicelow); break;
  default: return (0);
}
