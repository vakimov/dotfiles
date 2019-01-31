
source $DOTFILES_DIR/go

test -d "${GOPATH}" || mkdir "${GOPATH}"

brew install go

go get golang.org/x/tools/cmd/godoc

go get github.com/golang/lint/golint

go get -u github.com/golang/dep/cmd/dep
