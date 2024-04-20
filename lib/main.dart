import '/src/config/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CharacterProvider()),
      ],
      child: const MaterialApp(
        title: 'Characters',
        debugShowCheckedModeBanner: false,
        home: CharacterListScreen(),
      ),
    );
  }
}
