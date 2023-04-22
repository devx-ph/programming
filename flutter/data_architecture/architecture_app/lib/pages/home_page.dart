import 'package:architecture_app/data/notifiers/notifiers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'SPONTANEOUS',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 40.0,
                    letterSpacing: 4.0,
                  ),
                ),
                const SizedBox(height: 20.0),
                ValueListenableBuilder(
                  valueListenable: isConnectedNotifier,
                  builder: (context, isConnected, child) {
                    return Image.asset(
                      isConnected ? 'images/globe.png' : 'images/no-wifi4.png',
                      fit: BoxFit.contain,
                      height: 250.0,
                      width: 250.0,
                    );
                  },
                ),
                ValueListenableBuilder(
                  valueListenable: dataNotifier,
                  builder: (context, data, child) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          const SizedBox(height: 20.0),
                          Text(
                            data.activity,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            'This is a ${data.type} type activity.',
                            style: const TextStyle(
                              color: Colors.black87,
                              fontSize: 18.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          ListTile(
                            title: Text(data.participants.toString()),
                            leading: const Text('Participants'),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton.icon(
            onPressed: () async {
              await dataNotifier.value.reset();
            },
            icon: const Icon(Icons.add),
            label: const Text('New activity'),
          ),
          const SizedBox(height: 10.0),
          TextButton(
            onPressed: () {
              dataNotifier.value.logData();
            },
            child: const Text('Log data'),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
