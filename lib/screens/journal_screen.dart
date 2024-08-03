import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../journal_321_app/lib/providers/journal_provider.dart';

class JournalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('3-2-1 Journal'),
      ),
      body: Consumer<JournalProvider>(
        builder: (context, journalProvider, child) {
          return Column(
            children: [
              Text('Step ${journalProvider.currentStep} of 3'),
              Expanded(
                child: ListView.builder(
                  itemCount: journalProvider.entries.length,
                  itemBuilder: (context, index) {
                    final entry = journalProvider.entries[index];
                    return ListTile(
                      title: Text('Step ${entry.step}'),
                      subtitle: Text(entry.content),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: Implement journal entry creation
                  },
                  child: Text('Add Entry'),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
