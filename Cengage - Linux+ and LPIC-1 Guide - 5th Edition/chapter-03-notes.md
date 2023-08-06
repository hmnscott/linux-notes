# Chapter 3 Notes

## The Linux Directory Structure
```bash
# print working directory
pwd

# change directory
cd

# change to mary's home directory
cd ~mary
```

## Viewing Files and Directories

### File Types
* Text files
* Binary data files
* Executable program files
* Directory files
* Linked files
* Special device files
* Named pipes and sockets

Filenames can be up to 255 characters.

#### Common filename extensions
| Extension | Description |
| --- | --- |
| .bin | Binary executable program files |
| .c | C programming language source code files |
| .cc, .cpp | C++ programming language source code files |
| .html | html files |
| .ps | Files formatted for printing with postscript |
| .txt | Text files |
| .tar | Archived files (contain other files within) |
| .gz, .bz2, .xz, .Z | Compressed files |
| .tar.gz, .tgz, .tar.bz2, .tar.xz, .tar.Z | Compressed archived files |
| .conf, .cfg | Configuration files (contain text) |
| .so | Shared object (programming library) files |
| .o, .ko | Compiled object files |
| .pl | PERL programs |
| .tcl | Tcl (Tool Command Language) programs |
| .jpg, .jpeg, .png, .tiff, .xpm, .gif | Binary files that contain graphical images |
| .sh | Shell scripts |


### Listing Files

#### ls -l columns
* A file type character
  * d - directory
  * l - symbolically linked file
  * b or c - special device file
  * n - named pipe
  * s - socket
  * `-` - all other file types (text, binary)
* A list of permissions on the file (also called the mode of the file)
* A hard link count
* The owner of the file
* The group owner of the file
* The file size
* The most recent modification time of the file
* The filename. (Some files are shortcuts or pointers to other files and indicated with `->`. These are symbolic links.)

If a file is managed by SELinux a period (.) will follow the permissions of a file or directory.

```bash
# determine what type of file 'project' is
file project
```

#### Common options to the ls command
```bash
# list all filenames
ls -a
ls --all

# list most filenames (exclude the . and .. special files)
ls -A
ls --almost-all

# list filenames in column format
ls -C

# list filenames without color
ls --color=n

# list directory names instead of their contents
ls -d
ls --directory

# list all filenames without sorting (includes . and ..)
ls -f

# list filenames without sorting (does not include . and ..)
ls -U

# list filenames classified by file type
# and append indicator to entries
ls -F
ls --classify

# list filenames in long format and display
# the full modification time
ls --full-time

# list filenames in long format
ls -l

# list filenames in long format with 
# human-readable (easy-to-read) file sizes
ls -lh
ls -l --human-readable

# list filenames in long format, omit group info
ls -lG

# list filenames reverse sorted
ls -r
ls --reverse

# list filenames in specified directory
# and all subdirectories
ls -R
ls --recursive

# list filenames and their associated sizes in kilobytes
# size in blocks?
ls -s

# list filenames sorted by file size (largest first)
ls -S

# list filenames sorted by modification time (newest first)
ls -t

# list filenames in rows rather than in columns
ls -x
```

### Wildcard Metacharacters - Globbing

These are interpreted by the shell and can be used with most common filesystem commands, including (`ls`, `file`, and `cd`).

| Metacharacter | Description |
| --- | --- |
| * | Matches 0 or more characters in a filename |
| ? | Matches 1 character in a filename |
| [aegh] | Matches 1 character in a filename - provided this character is either an a, e, g, or h|
| [a-e] | Matches 1 character in a filename - provided this character is either an a, b, c, d, or e |
| [!a-e] | Matches 1 character in a filename - provided this character is NOT an a, b, c, d, or e |

## Displaying the Contents of Text Files
```bash
# display contents of entire file `file1` on terminal screen
cat file1

# use the same command as above, but display line numbers
cat -n file1

# display contents of file1 in reverse order
tac file1

# display first 10 lines of file1
head file1

# display first 3 lines of file1
head -3 file1

# display last 10 lines of file1
tail file1

# display last 3 lines of file1
tail -3 file1
```

## Displaying the Contents of Binary Files


## Searching for Text within Files


## Editing Text Files

