# Get Directory File Count Ex

Get the file count in a directory with extension filtering and recursive
directory scan. Use 'DIR' in the filter string to include directories in
the result.

## Usage

``` r
get_directory_file_count_ex(base_path, filter, scan_subdirs)
```

## Arguments

- base_path:

  A string.

- filter:

  A string.

- scan_subdirs:

  A logical.

## Value

An integer

## Note

This function has been auto-generated from the following Raylib function
definition:

    unsigned int GetDirectoryFileCountEx(const char * basePath, const char * filter, bool scanSubdirs);

## See also

Other File system:
[`change_directory()`](https://raylibr.jeroenjanssens.com/reference/change_directory.md),
[`directory_exists()`](https://raylibr.jeroenjanssens.com/reference/directory_exists.md),
[`file_copy()`](https://raylibr.jeroenjanssens.com/reference/file_copy.md),
[`file_exists()`](https://raylibr.jeroenjanssens.com/reference/file_exists.md),
[`file_move()`](https://raylibr.jeroenjanssens.com/reference/file_move.md),
[`file_remove()`](https://raylibr.jeroenjanssens.com/reference/file_remove.md),
[`file_rename()`](https://raylibr.jeroenjanssens.com/reference/file_rename.md),
[`file_text_find_index()`](https://raylibr.jeroenjanssens.com/reference/file_text_find_index.md),
[`file_text_replace()`](https://raylibr.jeroenjanssens.com/reference/file_text_replace.md),
[`get_application_directory()`](https://raylibr.jeroenjanssens.com/reference/get_application_directory.md),
[`get_directory_file_count()`](https://raylibr.jeroenjanssens.com/reference/get_directory_file_count.md),
[`get_directory_path()`](https://raylibr.jeroenjanssens.com/reference/get_directory_path.md),
[`get_file_extension()`](https://raylibr.jeroenjanssens.com/reference/get_file_extension.md),
[`get_file_length()`](https://raylibr.jeroenjanssens.com/reference/get_file_length.md),
[`get_file_mod_time()`](https://raylibr.jeroenjanssens.com/reference/get_file_mod_time.md),
[`get_file_name()`](https://raylibr.jeroenjanssens.com/reference/get_file_name.md),
[`get_file_name_without_ext()`](https://raylibr.jeroenjanssens.com/reference/get_file_name_without_ext.md),
[`get_prev_directory_path()`](https://raylibr.jeroenjanssens.com/reference/get_prev_directory_path.md),
[`get_working_directory()`](https://raylibr.jeroenjanssens.com/reference/get_working_directory.md),
[`is_file_dropped()`](https://raylibr.jeroenjanssens.com/reference/is_file_dropped.md),
[`is_file_extension()`](https://raylibr.jeroenjanssens.com/reference/is_file_extension.md),
[`is_file_name_valid()`](https://raylibr.jeroenjanssens.com/reference/is_file_name_valid.md),
[`is_path_file()`](https://raylibr.jeroenjanssens.com/reference/is_path_file.md),
[`load_file_text()`](https://raylibr.jeroenjanssens.com/reference/load_file_text.md),
[`make_directory()`](https://raylibr.jeroenjanssens.com/reference/make_directory.md),
[`save_file_text()`](https://raylibr.jeroenjanssens.com/reference/save_file_text.md)

## Examples

``` r
if (FALSE) {
get_directory_file_count_ex("file.png", "text", TRUE)
}
```
