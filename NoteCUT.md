# Notes on the `cut` command

The cut command can select specific parts of a line.

There are three important modes.

1. Cutting by the byte (`-b` option)
2. Cutting by the character (`-c` option)
3. Cutting by the field (`-f` option)

## Cutting by the byte

You can cut to or by the byte in a given line. You can give a range or specific selections as to what byte indices of a given line would be selected.

This is how you give a range: `1-3`, `1-3,5-7`

This is how you make a selection: `1,2,3`

This is how you select from the beginning to the end: `1-`

The opposite: from the beginning to the third byte: `-3`

Byte indices are counted from 1.

## Cutting by the character

I don't fully understand it, but go take a look at the explanation [here](https://www.geeksforgeeks.org/cut-command-linux-examples/).

I am not interested in this mode.

## Cutting by the field

A "field" is a word separated by a delimiter. By default, the delimiter is the tab character, but you can specify it. You may choose one field at a time: No selection of multiple fields.

The syntax is as follows:

```bash
cut -d "delimiter" -f (field number) file.txt
```

For example,

```bash
$ cat words.txt
Hi, my name is YuJin.

$ cut -d " " -f 1 words.txt
Hi,
```
