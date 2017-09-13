
* SETUP
  1. Install emacs
  2. Install p4 visual tools (perforce/p4vinst64.exe)
  3. 'git submodule update --init --recursive'
  4. Build omnisharp-roslyn/OmniSharp.sln in Release/x86 config
  5. Set values in config.bat
  6. Setup VisualStudio
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
  7. CAPS LOCK as CTRL:
     powershell -executionPolicy bypass -file "C:\Users\dtebbs\emcas-env\caps_as_ctrl.ps1"
