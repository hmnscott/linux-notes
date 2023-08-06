# Commands from Chapter 3


# The Linux Directory Structure

pwd
cd 
cd ~mary            # cd into mary home dir


# Viewing Files and Directories

file file1          # determine type of file
ls -a
ls --all
ls -A               # excludes . and .. 
ls --almost-all
ls -C               # list in column format
ls --color=n        # without color
ls -d               # list dir names not contents
ls --directory
ls -f               # ls w/o sorting
ls -U               # ls w/o sorting, no . or ..
ls -F               # ls classified by file type
ls --classify       # & append indicator
ls --full-time      # ll w full mod time
ls -lh              # human-readable file sizes
ls -l --human-readable
ls -lG              # long format, omit group info
ls -r               # ls reverse sorted
ls --reverse
ls -R               # ls dir and all subdir
ls --recursive
ls -s               # ls sizes in kilobytes? blocks?
ls -S               # sorted by file size
ls -t               # sorted by mod time
ls -x               # ls in rows


# Displaying the Contents of Text Files

cat file1
cat -n file1        # display line numbers
tac file1           # reverse order cat
head file1 
head -3 file1 
tail file1 
tail -3 file1 
more file1 
less file1 
diff file1 file2    # view differences


# Displaying the Contents of Binary Files

strings /bin/echo | less    
od program1 | head -5       # display in octal
od -x program1 | head -5    # display in hex


# Searching for Text Within Files

grep                        # common reg exp
egrep                       # extended reg exp
grep -E
fgrep                       # no reg exp
grep -F
grep "Word" file1 
grep -v "Word" file1        # lines that do not contain "Word"
grep -i "Word" file1        # case-insensitive
grep " t.e " file1          # toe, the, tie etc
grep "^I " file1            # lines that start with I
egrep "(lodge|Lake)" file1  # lodge or Lake


# Editing Text Files

