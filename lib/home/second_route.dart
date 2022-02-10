import 'package:flutter/material.dart';

class MySearchDelegate extends SearchDelegate {
  List<String> searchResults = [
    'Acerca de',
    'Calendario Fiscal',
    'Cerrar sesión',
    'Chat Uno a Uno',
    'Citas',
    'e.firma portable',
    'Indicadores',
    'Inscripción al RFC',
    'MarcaSAT',
    'Noticias',
    'Otras aplicaciones',
    'Preguntas Frecuentes',
    'Tutoriales',
    'Valorar',
    'Verificador de Códigos',
  ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => close(context, null),
      );

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = "";
            }
          },
        ),
      ];

  @override
  Widget buildResults(BuildContext context) => Container();
  //Center(
  //  child: Text(query, style: const TextStyle(fontSize: 64)),
  //);

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResults.where((searchResult) {
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    }).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];

        return ListTile(
          title: Text(suggestion, style: TextStyle(color: Colors.black)),
          onTap: () {
            query = suggestion;

            showResults(context);
          },
        );
      },
    );
  }
}
