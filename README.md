# cci-cli-bash-completion

Auto-completion for the [Cumulus CI](https://github.com/SFDO-Tooling/CumulusCI/) CLI for bash.

Inspired by the [salesforce-cli-bash-completion](https://github.com/wadewegner/salesforce-cli-bash-completion) project by [Wade Wegner](https://twitter.com/wadewegner).

Props to the Cumulus CI team (and all that are part of Salesforce.org).

## Installation

Clone this repository, and move to it's directory:

```
git clone https://github.com/toddhalfpenny/cci-cli-bash-completion && cd cci-cli-bash-completion
```

Update your `.bash_profile` (or `.bashrc` if that's what you have, eg in Ubuntu. Replace below as needed):

```
printf "\nsource '"$(pwd)"/cci.bash'\n" >> ~/.bash_profile
```

Reload your profile:

```
source ~/.bash_profile
```

Enjoy!

## Roadmap / To-do

 1. Auto complete _FLOW_NAME_ for commands like `cci flow run [OPTIONS] FLOW_NAME`
 1. Auto complete _TASK_NAME_ for commands like `cci task run [OPTIONS] FLOW_NAME`
 1. Auto complete _ORG_NAME_ for commands like `cci org connect [OPTIONS] FLOW_NAME`