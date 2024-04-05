import 'package:flutter/material.dart';

class Tipo extends StatefulWidget {
  const Tipo({Key? key}) : super(key: key);

  @override
  _TipoState createState() => _TipoState();
}

class _TipoState extends State<Tipo> {
  TextEditingController _searchController = TextEditingController();
  List<String> _events = [
    'Evento 1',
    'Evento 2',
    'Evento 3',
    'Otro evento 1',
    'Otro evento 2',
    'Otro evento 3',
  ];
  List<String> _filteredEvents = [];

  @override
  void initState() {
    super.initState();
    _filteredEvents.addAll(_events);
  }

  void _filterEvents(String searchText) {
    setState(() {
      _filteredEvents = _events
          .where((event) => event.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/pantallas/fondo2.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 100),
                Text(
                  'EveentApp',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _searchController,
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                            hintText: 'Buscar evento',
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            contentPadding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                          ),
                          onChanged: _filterEvents,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    itemCount: _filteredEvents.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Text(_filteredEvents[index]),
                          onTap: () {
                            // Acción al hacer clic en el evento
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
