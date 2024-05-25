
enum FromWho{me, hers}

class Message{

  final String txt;
  final String? imageURL;
  final FromWho fromWho;

  Message({required this.txt, this.imageURL, required this.fromWho});


}