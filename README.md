
* SETUP
  1. Install emacs
  2. Install p4 visual tools (perforce/p4vinst64.exe)
  3. 'git submodule update --init --recursive'
  4. Build omnisharp-roslyn:
     * `cd omnisharp-roslyn`
     * `powershell -executionPolicy bypass -command .\\build.ps1 -configuration Release -target Quick`
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
       5. Repeat for shortcuts:
          1. "TestExplorer.RunSelectedTests" -> CTRL + Shift + R
          2. "TestExplorer.DebugSelectedTests" -> CTRL + Shift + T
          3. "TestExplorer.RunAllTests" -> CTRL + Shift + A
     - 80 Char Guide Line
       1. Install "Editor Guideline" extension
          - https://marketplace.visualstudio.com/items?itemName=PaulHarrington.EditorGuidelines
       2. Tools -> Options -> Environment -> Fonts and Colors -> Guideline
          - Choose color (Yellow)
       3. View -> Other Windows -> Command Window
          - > Edit.AddGuildeline 80
  7. CAPS LOCK as CTRL:
     powershell -executionPolicy bypass -file "C:\Users\dtebbs\emcas-env\caps_as_ctrl.ps1"
