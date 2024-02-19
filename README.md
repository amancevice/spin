# Spin

Execute a command and display a scrolling block of logs

Inspired by Docker's layer build output.

## Usage

Simple usage:

```bash
spin -- ./bin/spin-example
```

Customize the colors (ANSI codes), number of lines streamed, and title:

```bash
spin \
--color 235 \
--lines 7 \
--spinner-color 41 \
--title spin-example \
--title-color 99 \
-- ./bin/spin-example
```
