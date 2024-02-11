# File Organizer Bash Script

This Bash script organizes files within a specified directory based on their file types into separate subdirectories. It aims to keep directories clean and tidy by automatically sorting files into appropriate categories.

## Features

- Takes a directory path as an argument and organizes the files within that directory.
- Creates subdirectories based on file extensions (e.g., "txt" for text files, "jpg" for image files).
- Handles files with unknown or no file extensions, placing them in a "misc" subdirectory.
- Moves files into existing directories if subdirectories for particular file types already exist.
- Handles edge cases, such as files with no extensions or hidden files (those starting with a dot).

## Usage

To use the script, follow these steps:

1. **Download the Script:**
   - Download the `organize_files.sh` script from this repository.

2. **Make the Script Executable:**
   - Open a terminal and navigate to the directory containing the script.
   - Run the following command to make the script executable:

   ```bash
   chmod +x organize_files.sh
   ```

3. **Run the Script:**
   - Run the script by providing the directory path as an argument. For example:

   ```bash
   ./organize_files.sh /path/to/your/directory
   ```

   Replace `/path/to/your/directory` with the path to the directory you want to organize.

4. **View the Organized Files:**
   - After running the script, navigate to the specified directory to view the organized files in their respective subdirectories.

## Example

Suppose you have a directory called "Downloads" with the following files:

- file1.txt
- file2.jpg
- file3.pdf
- file5_without_extension
- file6.unknown

After running the script, the directory structure will be as follows:

```
Downloads/
|-- txt/
|   |-- file1.txt
|-- jpg/
|   |-- file2.jpg
|-- pdf/
|   |-- file3.pdf
|-- misc/
|   |-- file5_without_extension
|   |-- file6.unknown
```

## Contributing

Contributions are welcome! If you have any suggestions or improvements for the script, feel free to submit a pull request.

## License

This script is licensed under the [MIT License](LICENSE). Feel free to modify and distribute it as needed.

