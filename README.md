# My dotfiles

Download the zip file and extract it to your home directory. Mind the place where you extract it. I recommend your home directory, but once you extract it, you shouldn't move it.

Then, run the bootstrap script:

```bash
source bootstrap.sh
```

This will require your password to install Homebrew and some packages.

After that, I recommend you run the following command to setup some of macOS defaults:

```bash
source macos/setup.sh
```

Finally, set up git with ssh and gpp signing. Edit `git/setup.sh` to contain your name and email, then run:

```bash
source git/setup.sh
```

This will generate both ssh and gpg keys, and will tell you where do you have to upload them to start using them with GitHub.
