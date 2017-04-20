
* SETUP
  1. Install emacs
  2. 'git submodule update --init --recursive'
  3. Build omnisharp-roslyn/OmniSharp.sln in Release config
  4. Set values in config.bat
  5. Setup VisualStudio
     - Add a menu entry
       1. Tools -> External Tools
       2. Add:
            Title : emacs
            Command : %HOMEDRIVE%%HOMEPATH%\emacs-env\emacsclient.bat
            Arguemnts : $(ItemPath)
            Initial Directory : <empty>
            Check "Use Output window"
       3. Move "emacs" to the top
       4. Apply
     - Add keyboard shortcut
       1. Tools -> Options -> Keyboard
       2. Enter: "Tools.ExternalCommand1"
       3. Add Shortcut (e.g. Alt-O) in the "Shortcuts ..." dialog
       4. "Use new shortcut in:" -> "Global"
