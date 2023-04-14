import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String messageText;
  final bool isMine;
  final String? imageUrl;

  const ChatBubble(
      {Key? key,
      required this.messageText,
      required this.isMine,
      this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.only(
      topLeft: Radius.circular(15.0),
      topRight: Radius.circular(15.0),
      bottomRight: isMine ? Radius.circular(0.0) : Radius.circular(15.0),
      bottomLeft: isMine ? Radius.circular(15.0) : Radius.circular(0.0),
    );

    final bubbleColor = isMine ? Colors.blue : Colors.grey.shade200;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment:
            isMine ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          if (!isMine) ...[
            CircleAvatar(
              backgroundImage:
                  imageUrl != null ? NetworkImage(imageUrl!) : null,
              radius: 15.0,
            ),
            SizedBox(width: 8.0),
          ],
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: bubbleColor,
                borderRadius: borderRadius,
              ),
              child: Column(
                crossAxisAlignment:
                    isMine ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                children: <Widget>[
                  if (imageUrl == null)
                    Text(
                      messageText,
                      style: const TextStyle(fontSize: 16.0),
                    ),
                  if (imageUrl != null)
                    Image.network(
                      imageUrl!,
                      height: 150.0,
                      width: 150.0,
                      fit: BoxFit.cover,
                    ),
                ],
              ),
            ),
          ),
          if (isMine) ...[
            SizedBox(width: 8.0),
            CircleAvatar(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              child: Icon(Icons.person),
              radius: 15.0,
            ),
          ],
        ],
      ),
    );
  }
}
