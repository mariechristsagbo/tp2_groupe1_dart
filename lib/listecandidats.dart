import 'package:flutter/material.dart';
import 'package:election/Candidats.dart';
import 'package:election/formulaire.dart';


class Candidats extends StatefulWidget {
  @override
  _CandidatsState createState() => _CandidatsState();
}

class _CandidatsState extends State<Candidats> {
  List<Candidate> candidates = [];

  void _showFormDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Formulaire(
          onSubmit: (candidate) {
            setState(() {
              candidates.add(candidate);
            });
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Candidats'),
      ),
      body: ListView.builder(
        itemCount: candidates.length,
        itemBuilder: (BuildContext context, int index) {
          final candidate = candidates[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(candidate.imageUrl),
            ),
            title: Text('${candidate.name} ${candidate.firstName}'),
            subtitle: Text(candidate.description),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showFormDialog,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Paramètres',
          ),
        ],
      ),
    );
  }
}
