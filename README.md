# Readme

This repo is a collection of small bash scripts for converting digital comics to CBZ files. These were written for use with Vogon Media Server and specifically because a cheap tablet I own does not have enough memory to render PDF files of high quality comics without crashing the browser.

## Requirements
* poppler-utils
    * Specifically pdftoppm
* unrar
* zip

## Usage

The three primary scripts take a single unflagged argument, the file they are working on.

The scripts assume that the file is in the current working directory, as that is my habit when running these.

```shell
cbr_repack.sh target_file.cbr
```

```shell
pdf2cbz.sh target_file.pdf
```

```shell
folder2cbz.sh target_folder/
```

The two directory scripts will target all applicable files in the current working directory. I find these useful for batch converting, especially with PDFs as this can take a while to do.

```shell
cbr_repack_dir.sh
```

```shell
pdf2cbz_dir.sh
```

Happy reading.