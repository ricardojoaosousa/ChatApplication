import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {

  ChatMessage(this.data, this.mine);

  final Map<String, dynamic> data;
  final bool mine;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal:10),
      decoration: new BoxDecoration(
        color: const Color(0xFFFF202329),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: <Widget>[
          !mine ?
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CircleAvatar(
                backgroundImage: NetworkImage(
                    data['senderPhotoUrl']
                ),
            ),
          ) : Container(),
          Expanded(
            child: Column(
              crossAxisAlignment: mine ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: <Widget>[
                data['imgUrl'] != null ?
                    Image.network(data['imgUrl'], width: 220,)
                :
                    Text(
                      data['text'],
                      textAlign: mine ? TextAlign.end : TextAlign.start,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
              ],
            ),
          ),
          mine ?
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  data['senderPhotoUrl']
              ),
            ),
          ) : Container()
        ],
      ),
    );
  }
}
