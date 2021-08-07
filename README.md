#### contains_opts

> A plugin for [Oh My Fish](https://www.github.com/oh-my-fish/oh-my-fish).

[![GPL License](https://img.shields.io/badge/license-GPL-blue.svg?longCache=true&style=flat-square)](/LICENSE)
[![Fish Shell Version](https://img.shields.io/badge/fish-v3.0.1-blue.svg?style=flat-square)](https://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-blue.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)

<br/>

## Description

Check if the command line contains any of the listed flags. If no flags are listed, it tests if the command line contains any flag at all. Most useful as a condition to trigger context aware completions for a command.

## Synopsis

```
contains_opts a long_flag_a -oldstyle_flag_a
```

## Example usage

```
complete -rc $cmd -n 'not contains_opts' -s s -l save -d 'Bookmark directory'
```

Only display option `-s/--save` if no other flags are present.

```
complete -rc $cmd -n 'contains_opts s save' -a "$bookmark" -d "$path"
```

Display bookmarks when option `-s/--save` is present.


## Install


```fish
omf repositories add https://gitlab.com/argonautica/argonautica 
omf install contains_opts
```

---

Ⓐ Made in Anarchy. No wage slaves were economically coerced into the making of this work.
