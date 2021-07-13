import 'package:args/command_runner.dart';
import 'package:obs_command/commands/CustomCommand.dart';
import 'package:obs_command/commands/MuteCommand.dart';
import 'package:obs_command/commands/SetProfile.dart';
import 'package:obs_command/commands/SetVolume.dart';
import 'package:obs_command/commands/StartSream.dart';
import 'package:obs_command/commands/StopStream.dart';
import 'package:obs_command/commands/SwitchSceneCommand.dart';
import 'package:obs_command/commands/ToggleAudioCommand.dart';
import 'package:obs_command/commands/UnMute.dart';

void main(List<String> arguments) async {
  var parser = buildCommands();
  await parser.run(arguments);
}

CommandRunner buildCommands() {
  var runner =
      CommandRunner('obs_command', 'A command runner for obs written in dart')
        ..addCommand(SwitchScene())
        ..addCommand(ToggleAudio())
        ..addCommand(Mute())
        ..addCommand(UnMute())
        ..addCommand(SetProfile())
        ..addCommand(SetVolume())
        ..addCommand(StartStream())
        ..addCommand(StopStream())
        ..addCommand(CustomCommand());
  return runner;
}
