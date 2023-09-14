import 'dart:convert';
import 'dart:math';
import 'package:hackheads/functions.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatMessage {
  final String text;
  final bool isMe;

  _ChatMessage(this.text, this.isMe);
}

class _ChatPageState extends State<ChatPage> {
  final List<_ChatMessage> messages = []; // List to store chat messages
  final TextEditingController messageController = TextEditingController();
  final Random random = Random();
  final List<String> replies = [
    'Hello!',
    'How are you?',
    'Nice to meet you.',
    'I am good, thanks!',
    'What do you think about this?',
    'Tell me more.',
    'That sounds interesting!',
  ];
  String url = '', output = 'Initial';
  var data;
  // Function to send a message
  void sendMessage() async {
    final message = messageController.text.trim();
    if (message.isNotEmpty) {
      try {
        // Your HTTP request code here
        url = 'http://10.0.2.2:5000/api?query=' + message.toString();
        data = await fetchData(url);
        var decoded = jsonDecode(data);
        setState(() {
          output = decoded['output'];
          print(output);
          print('------------------');
        });
      } catch (e) {
        print('Error: $e');
      }

      setState(() {
        messages.insert(0, _ChatMessage(message, true)); // Sent by the user
        final randomReply = replies[random.nextInt(replies.length)];
        messages.insert(0, _ChatMessage(randomReply, false)); // Random reply
        messageController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat App'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true, // Start from the bottom
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final chatMessage = messages[index];
                return ChatBubble(
                  message: chatMessage.text,
                  isMe: chatMessage.isMe,
                );
              },
            ),
          ),
          Divider(height: 1.0),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: messageController,
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isMe;

  ChatBubble({required this.message, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: isMe ? Colors.blue : Colors.grey, // Bubble background color
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Text(
          message,
          style: TextStyle(color: Colors.white), // Text color
        ),
      ),
    );
  }
}
