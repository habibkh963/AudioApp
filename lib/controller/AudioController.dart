import 'package:audioplayers/audioplayers.dart';

import 'package:get/get.dart';

import '../Data/DataProvider.dart';

class AudioController extends GetxController {
  static AudioController audioController = Get.find();
  AudioPlayer audioPlayer = AudioPlayer();
  play() async {
    await audioPlayer.play(
      AssetSource(
        'sample3.mp3',
      ),
    );
    update();
  }

  pause() {
    audioPlayer.pause();
  }

  @override
  void onInit() async {
    await audioPlayer.setReleaseMode(ReleaseMode.stop);
    await await DataSource.dataSource.get_Posts();
    super.onInit();
  }

  @override
  void onClose() {
    pause();
    audioPlayer.dispose();
    super.onClose();
  }
}
