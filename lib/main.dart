import 'package:flutter/material.dart';
void main() => runApp(const SalatApp());
class SalatApp extends StatelessWidget {
  const SalatApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFE8F5E9),
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: const Color(0xFF0D5C36),
                ),
                child: const Column(
                  children: [
                    Text('نماز بعدی: عصر 15:52', style: TextStyle(color: Colors.white, fontSize: 20)),
                    Text('تهران', style: TextStyle(color: Colors.white70)),
                  ],
                ),
              ),
              const SizedBox(height:20),
              _pTile('فجر','05:12'), _pTile('ظهر','12:31'), _pTile('عصر','15:52'), _pTile('مغرب','18:18'), _pTile('عشاء','19:45'),
            ],
          ),
        ),
      ),
    );
  }
}
Widget _pTile(String n,String t){return Container(margin:const EdgeInsets.only(bottom:10),padding:const EdgeInsets.all(16),decoration:BoxDecoration(color:Colors.white,borderRadius:BorderRadius.circular(16)),child:Row(children:[Text(n,style:const TextStyle(fontWeight:FontWeight.bold)),const Spacer(),Text(t)]));}
