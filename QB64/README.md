## Files
To compile the source, you need the QB64 Phoenix Edition, which can be found [here](https://github.com/QB64-Phoenix-Edition/QB64pe).

There are 6 files in this directory
* quine2.bas - The complete quine, which reproduces itself.
* quine2aw.bas - This is the original program without itself attached as data statements.
* dataconvert.bas - The program that reads another program and trranslates it to decimal data.
* Common_Dialog_Prefix.bi - Support values for dataconvert to use the Windows File Open dialog window.
* Common_Dialog_Suffix.bi - Support SUBroutines for dataconvert to use the Windows File Open dialog window.
* README.md - You're reading it now.

## How to use
* Start QB64 Phoenix Edition. The IDE will appear.
* Open **quine2.bas**.
* Run the program. It will generate an on-screen listing of itself which looks exactly like the copy you have in the ide.

## How this is created
To recreate the quine, 
* Start QB64 Phoenix Edition. The IDE will appear.
* Open  **dataconvert.bas** using QB64 Phoenix Edition IDE.
* Run the **dataconvert** program.*
* For input to the Windows Open Dialog Box, give it the name of the original file, **quine2raw.bas**.
* In the console output window, a series of **data** statements will be generated. Copy them by using the mouse to select all the text, then press enter to copy. (Note: right-clicking on the hightlighted area with the mouse will not work.)
* Now, open **quine2raw.bas** in the IDE, at the end, paste the data statements. Add **,0** to the end of the last line to indicate end of file.
* Save As a different name, e.g. **quine2new.bas**.
* Run this program, and it produces a copy of itself. This is the same behavior as **quine2.bas**.
