import '/src/config/index.dart';

class CharacterDetailScreen extends StatelessWidget {
  final CharacterModel character;

  const CharacterDetailScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.name),
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.network(
              character.image,
              fit: BoxFit.fill,
              scale: 1.0,
              errorBuilder: (context, error, stackTrace) {
                return Image.network(
                  'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_960_720.png',
                );
              },
            ),
          ),
          Text('Name: ${character.name}', style: Theme.of(context).textTheme.titleLarge),
          Text('Actor: ${character.actor}', style: Theme.of(context).textTheme.titleMedium),
          Text('House: ${character.house}', style: Theme.of(context).textTheme.titleMedium),
        ],
      ),
    );
  }
}
