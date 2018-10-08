# List Empty Dir Using Bash Script
![ScreenShot](/screenshots/bash_list_empty_dir.jpg)

# How do I Tinker?
1. Using the Command Line
   - Assuming Git is installed on your device, in the Command Terminal, run:
     `$git clone https://github.com/vim/vim.git`
   - Then:
     `$cd vim/src`
   - And lastly:
     `$make`

2. Using the Command Terminal `$cd` to your prefered working directory
   - Enter:
     `$vim yourFileName`

3. Copy and paste .sh source code from this Git Repo to your open Vim editor
   - Then:
     `:wq` to save and quit to Command Terminal
   - Finally:
     `$bash yourFileName.sh ./`
   - This will run the script in your current working directory (CWD)

# But What Does it DO?
The bash script itself will output all the files in your CWD. If there are any directories nested within, and if those directories are empty, the script will then create a file **EmptyDir.txt** within your CWD which will contain list the names of the empty directories in your CWD. Simple and plain and beautifully tinkerable.
