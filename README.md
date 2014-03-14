# buildbox-agent

The new Buildbox Agent written in Go (Golang)

### How does it work?

When a job is ready to be run on the agent, the agent will run the `bootstrap.sh` script with all the correct environment variables presenter.

This script is responsible for creating the build directory, cloning the repo, and running the build script.

### Installation

Install the agent

    $ bash -c "`curl -sL https://raw.github.com/buildboxhq/buildbox-agent/master/install.sh`"

The bootstrap script is by default installed to: `$HOME/.buildbox/bootstrap.sh`

Once installed, you should now be able to run the agent

    $ buildbox-agent start --access-token token123

For more help with the command line interface

    $ buildbox-agent help

### Development

Some basic instructions on setting up your Go environment and the codebase for running.

```bash
# Make sure you have go installed.
brew install go --cross-compile-common

# Setup your GOPATH
export GOPATH="$HOME/Code/go"
export PATH="$HOME/Code/go/bin:$PATH"

# Install godep
go get github.com/kr/godep

# Checkout the code
mkdir -p $GOPATH/src/github.com/buildboxhq/buildbox-agent
git clone git@github.com:buildboxhq/buildbox-agent.git $GOPATH/src/github.com/buildboxhq/buildbox-agent
cd $GOPATH/src/github.com/buildboxhq/buildbox-agent
godep get
go run main.go
```

### Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

### Copyright

Copyright (c) 2014 Keith Pitt. See LICENSE for details.