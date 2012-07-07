# dotfiles

My dotfiles - to satisfy my needs and your curiosity.
This is not a carefully curated collection for public consumption.

I'm not sure that [dotfiles are meant to be forked](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).
I think it's usually better to piece them together yourself, gradually,
so you know what each part does and avoid what you don't need.

## Installation

    cd ~
    git clone git://github.com/chrisberkhout/dotfiles.git && cd dotfiles
    rake install

The `rake install` will take each `~/dotfiles/specificdotfile` and create a
symlink to it in your home directory (`~/.specificdotfile`).
    
## Copyright

Public domain: [CC0](http://creativecommons.org/publicdomain/zero/1.0/legalcode)

