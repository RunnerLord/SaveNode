# Documentation

## VoiceInstance <img src="https://raw.githubusercontent.com/casbrugman/godot-voip/master/addons/godot-voip/icons/VoiceInstance.svg" alt="icon" width="32"/>
This node implements a single voice connection.

### Signals
* `received_voice_data(data: PoolRealArray, from_id: int)` Emitted when voice data is received.
* `sent_voice_data(data: PoolRealArray)` Emitted when recording and data is sent.

### Properties
|Type|Name|description|
|----|----|-----------|
|`NodePath`|custom_voice_audio_stream_player|When used, the referenced `AudioStreamPlayer` will be used as output for incoming audio data.|
|`bool`|recording|If true, the VoiceInstance will process and send microhphone data to the other VoipInstance.|
|`bool`|listen|If true, the VoiceInstance will also play any microhphone data it records.|
|`float`|input_threshold|Value above which microhphone data will be sent. Set to `0` to disable.|