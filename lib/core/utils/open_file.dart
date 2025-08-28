
import 'package:dusk_still_down/core/utils/data.dart';
import 'package:dusk_still_down/features/data/models/music.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart' as p;
class OpenFile {
  List<Music> musicList = [];

  Future<void> pickAudioFiles() async {
    // Kiểm tra quyền đọc bộ nhớ

    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['mp3', 'wav', 'm4a'],
        allowMultiple: true,
      );

      if (result != null) {
        List<String> paths = result.paths.whereType<String>().toList();

        print("1${paths.length}");

        for (int i = 0; i < paths.length; i++) {
          // Lấy ảnh lần lượt, nếu số nhạc > số ảnh thì lặp lại ảnh
          String image = LoadingData().images[i % LoadingData().images.length];

          musicList.add(
            Music(
              name: p.basenameWithoutExtension(paths[i]),
              image: image,
              url: paths[i],
            ),
          );
        }

        print(musicList.length.toString());
        musicList.forEach((item) {
          print(item.name);
          print(item.url);
        });
      }
    } catch (e) {
      print("Lỗi khi chọn file: $e");
    }
  }
}