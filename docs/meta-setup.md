## Setup a Docsy site using the example site

These instructions are how I created a testing repo.

Create an empty repo on GitHub and clone it to your local workstation.

```
git clone [YOUR NEW REPO]
cd [YOUR NEW REPO]
```

Add the [docsy example](https://github.com/google/docsy-example) site:

```
git clone --recurse-submodules --depth 1 https://github.com/google/docsy-example.git
cp -npr docsy-example/* .
rm -rf docsy-example
```

The `-n` flag is important to the process as it will not overwrite any of the repo's existing information (no-clobber). Next, re-add the submodule and update.

```
rm -rf themes/docsy
git submodule add https://github.com/google/docsy.git themes/docsy
git submodule update --init --recursive
```

Detailed [getting started](https://www.docsy.dev/docs/getting-started/) guide if you get stuck. If you'd like to customize the site, the [docsy docs](https://www.docsy.dev/docs/getting-started/#basic-site-configuration) are a great starting spot too.
