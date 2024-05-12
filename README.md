# icytea

my personal fork of tdesktop. based on the latest released tag (maybe)

# Features

1. some ui improvement
2. local passcode with u2f devices
3. probably some bugs as I'm not familiar with C++/Qt

# Disclaimer

> Your warranty is now void.
>
> I am not responsible for stolen accounts, overheated GPUs,
> thermonuclear war, or you getting fired because the notification failed. Please
> do some research if you have any concerns about the PATCHES included in this fork
> before using it! YOU choose to make these changes, and if
> point the finger at me for breaking your telegram, I will laugh at you.
>

# Build hints

if you're using arch, make sure you have docker-buildx installed or you'll get an error.

`TELEGRAM_API_ID` and `TELEGRAM_API_HASH` should be in your env, then you can run `./icyt b --{OS}`.

or you can: use `./icyt p && cd icytea ` then follow the [official guide](https://github.com/telegramdesktop/tdesktop/blob/master/docs/)

> [!TIP]
>
> It's recommended to use [official prebuilt environment](https://github.com/telegramdesktop/tdesktop/pkgs/container/tdesktop%2Fcentos_env) for compilation as `prepare.sh` compiles EVERYTHING

> [!NOTE]
>
> Please preserve enough disk space (30GB at least) to build telegram.
> It would be better if you build with a CI since building telegram requires many resources.

# Why do you use patches?

Then you can review all of my modifications directly and that's more transparency.
