

import '../database.dart';
import 'meme_repo.dart';

class MemeDomainController {
  getNextMeme() async {
    return await getIt.get<MemeRepo>().getMeme();
  }
}