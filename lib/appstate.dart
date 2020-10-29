import 'package:notium/core/notes_folder_fs.dart';

enum SyncStatus {
  Unknown,
  Done,
  Pulling,
  Pushing,
  Error,
}

class AppState {
  SyncStatus syncStatus = SyncStatus.Unknown;
  int numChanges = 0;

  bool get hasJournalEntries {
    return notesFolder.hasNotes;
  }

  NotesFolderFS notesFolder;
  var gitBaseDirectory = "";

  bool remoteGitRepoConfigured = false;
}
