import '/src/config/index.dart';

class CharacterListScreen extends StatelessWidget {
  const CharacterListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('HP Characters'),
      ),
      body: Consumer<CharacterProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            itemCount: provider.characters.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    provider.characters[index].image,
                    errorBuilder: (context, error, stackTrace) {
                      return Image.network(
                        'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_960_720.png',
                      );
                    },
                  ),
                ),
                title: Text(provider.characters[index].name),
                subtitle: Text(provider.characters[index].actor),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CharacterDetailScreen(
                        character: provider.characters[index],
                      ),
                    ),
                  );
                },
                trailing: const Icon(Icons.arrow_forward_ios),
              );
            },
            separatorBuilder: (context, index) => const Divider(color: Colors.grey),
          );
        },
      ),
    );
  }
}
