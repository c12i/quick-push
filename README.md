<h1 align="center">quick-push ䷭</h1>
<p>
  <a href="README.md" target="_blank">
    <img alt="Documentation" src="https://img.shields.io/badge/documentation-yes-brightgreen.svg" />
  </a>
  <a href="LICENSE" target="_blank">
    <img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-yellow.svg" />
  </a>
</p>

> Quickly commit & push code(current branch) to your remote repository with a single command. The script will stage, commit and push code if a remote repository exists under `origin`, otherwise, it will only stage and commit the code.
> Tested on zsh and bash.

## Install

```sh
git clone https://github.com/collinsmuriuki/quick-push.git ~/quick-push

echo "source ~/quick-push/.quick-push" >> ~/.bash_profile && source ~/.bash_profile
```

## Usage

With custom commit message
```sh
qpush "<your commit message>"
```
Without commit message. Timestamp will be the default commit message. (Use in projects where commit messages are not a priority) 
```sh
qpush
```
<h1 align="center">
  <img src="/assets/qpush.gif" alt="animated gif">
</h1>

## Author

🧑🏾‍💻 **collinsmuriuki**

* Website: https://muriuki.dev
* Github: [@collinsmuriuki](https://github.com/collinsmuriuki)

## Show your support

Give a ⭐️ if this project helped you!

## 📝 License

Copyright © 2020 [collinsmuriuki](https://github.com/collinsmuriuki).<br />
This project is [MIT](LICENSE) licensed.
