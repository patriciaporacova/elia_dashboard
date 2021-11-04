import 'package:http/http.dart' as http;
import 'package:learning_dashboard/giph/giphy_gif.dart';

class GiphyAPI {
  static const GIPHY_KEY = '69wsy6mM9Qvd78qLXPGmbC3rBDVB8Iju';
  static const GIPHY_ROOT = 'api.giphy.com';
  static const GIFS_ENDPOINT = 'v1/gifs';

  Future<GiphyGif> getGiph({String id}) async {
    Uri uri = Uri.https(GIPHY_ROOT, GIFS_ENDPOINT + '/$id', {
      'api_key': GIPHY_KEY,
    });

    print('[GiphyAPI] getGiph, uri: ' + uri.toString());

    http.Response response;
    try{
      response = await http.get(uri);
    }
    catch(e){
      print(' gif error: $e');
    }


    print('[GiphyAPI] getGiph, response.statusCode: ' + response.statusCode.toString());

    if (response.statusCode == 200) {
      GiphyGif giphyGif = GiphyGif.fromJson(response.body);

      print('gif');
      return giphyGif;
    } else {
      print('[GiphyAPI] getGiph, response.body: ' + response.body);
      throw Exception('Failed to load gif');
    }
  }
}
