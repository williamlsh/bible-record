<!--
 Copyright (c) 2020 william

 This software is released under the MIT License.
 https://opensource.org/licenses/MIT
-->

# Bible Records

Collect Holy Bible KJV records into your playlist in one command.

This playlist includes all Bible records in *m4a* audio format and will be in the root folder *records*.

## Prerequisites

* Docker

## Usage

Clone this repo to local:

```bash
git clone git@github.com:williamlsh/bible-records.git
```

Collect with one command:

```bash
make all
```

Possibly with HTTP proxy:

```bash
make -e HTTP_PROXY="<YOUR_PROXY>" all
```

## Author

William

## License

MIT License
