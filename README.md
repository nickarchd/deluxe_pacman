# Pacman Deluxe - Linux Compatibility Patch

## About

This repository contains an unofficial patch for **Pacman Deluxe**, a game originally created by **Neil Roy** (aka **Nite Hackr**) from the **Allegro Community**.

This patch is **not** a new game or a modification of the original gameplay, assets, or design. It is simply a **compatibility fix** that allows Pacman Deluxe to run correctly on **Linux systems**. Previously, the game was only available for Windows.

## Credits

All credit for the original game goes to **Neil Roy (Nite Hackr)**, who designed and developed Pacman Deluxe using the Allegro game library. This patch would not exist without his original work, and it is shared here purely as a way to make his game accessible to Linux users.

If you enjoy this game, please support and recognize the original creator, Neil Roy, for his work.

## What This Patch Does

- Fixes compatibility issues that prevented the game from running on Linux
- Does not alter the original game's mechanics, art, or content
- Intended solely as a porting/compatibility fix, not a fork or reinterpretation of the game

## Disclaimer

This is a fan-made, unofficial patch created to preserve and extend access to the original game. All rights to Pacman Deluxe belong to its original creator, Neil Roy. If the original author wishes for this patch to be taken down or modified, please reach out.

## Known Issues
If you are seeing fuzzy sprites or weird pixels, it's a known problem with Nouveau drivers that I'm still researching a fix for. no issue using NVIDIA Driver

## Dependencies

To build this game on Linux, you will need the following libraries installed:

- `allegro`
- `allegro_image`
- `allegro_font`
- `allegro_ttf`
- `physfs`
- `allegro_physfs`
- `allegro_acodec`
- `allegro_audio`
- `allegro_dialog`
- `allegro_primitives`
- `libm` (standard math library, usually included with your system's libc)

## How to Build

This project includes a `Makefile` to compile the game on Linux. Once you have the dependencies installed, simply run:

```bash
make
```

## How to Play
Run this game it needs to be in the same folder with assets: 'Deluxe Pacman 2.pak'
```bash
cp deluxe_pacman ./bin
cd ./bin
./deluxe_pacman
```
Or

```bash
cp ./bin/Deluxe\ Pacman\ 2.pak .
./deluxe_pacman
```

## License

This patch is provided as-is, for compatibility purposes only. Please refer to the original game's license/terms for usage of the base game itself.