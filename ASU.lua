(on: push: branches: [develop])  # Trigger pas push ke branch develop
(jobs: create-pr: runs-on: ubuntu-latest)
(steps: - uses: actions/checkout@v4)
(- name: Auto Create PR uses: peter-evans/create-pull-request@v6 with: token: ${{ secrets.GITHUB_TOKEN }} title: 'Auto PR: Update Lua Android Build' body: 'Changes: Tambah support NDK. Auto-generated.' branch: auto-pr-lua commit-message: 'Fix Lua build for Android' ))
