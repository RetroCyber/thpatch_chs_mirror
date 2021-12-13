name: GitHub Actions Demo
on:
    schedule:
        - cron: * 0/1 * * *
jobs:
  Explore-GitHub-Actions:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
        run:
            sudo wget -tries=10 https://srv.thpatch.net/lang_zh-hans/files.js
            ./PatchFileSync repo_files.js files.js
            sudo rm -f repo_files.js
            sudo cp files.js ./lang_zh-hans/files.js
            sudo mv files.js repo_files.js
            
