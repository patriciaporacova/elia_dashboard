import 'package:flutter/services.dart';
import 'package:learning_dashboard/giph/giph_ids.dart';
import 'package:learning_dashboard/giph/giphy_api.dart';
import 'package:learning_dashboard/giph/giphy_gif.dart';

class GiphSupplier {
  static const GIF_IDS_FILE = 'assets/gif_ids.json';

  GiphyIDs _gifs;
  GiphyAPI _api;

  GiphSupplier() {
    _api = GiphyAPI();
  }

  Future<GiphyIDs> _getIDs() async {
    String s = await rootBundle.loadString(GIF_IDS_FILE);
    GiphyIDs idsObject = GiphyIDs.fromJson(s);
    return idsObject;
  }

  Future<GiphyGif> getRandomPositive() async {
    _gifs ??= await _getIDs();
    _gifs.positive.shuffle();
    ConGif gif = _gifs.positive.first;
    return _api.getGiph(id: gif.id);
  }

  Future<GiphyGif> getRandomWatchout() async {
    _gifs ??= await _getIDs();
    _gifs.watchout.shuffle();
    ConGif gif = _gifs.watchout.first;
    return _api.getGiph(id: gif.id);
  }

  Future<GiphyGif> getRandomNegative() async {
    _gifs ??= await _getIDs();
    _gifs.negative.shuffle();
    ConGif gif = _gifs.negative.first;
    return _api.getGiph(id: gif.id);
  }

  Future<GiphyGif> getRandomAlmost() async {
    _gifs ??= await _getIDs();
    _gifs.almost.shuffle();
    ConGif gif = _gifs.almost.first;
    return _api.getGiph(id: gif.id);
  }

  Future<GiphyGif> getRandomLearn() async {
    _gifs ??= await _getIDs();
    _gifs.learn.shuffle();
    ConGif gif = _gifs.learn.first;
    return _api.getGiph(id: gif.id);
  }
}
