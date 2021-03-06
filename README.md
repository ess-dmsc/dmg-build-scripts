# Integration Test

ess-dmsc integration test setup. These playbooks are supposed to be run from
the test-orchestrator node.

For more information on IKON demo see [here](ikondemo/README.md)

## Directories

The repository contains the following directories

Directory             | Function
-------------         | -------------
ansible               | Ansible scripts for the nightly integration test (virtual servers)
ikondemo              | Bash and Ansible scripts to control the IKON13 demo
jenkins               | Expect script for Jenkins


## Changing EFU configuration

The tests use Ansible inventories and variables defined in https://git.esss.dk/dm_group/dm-ansible. To change EFU generator and pipeline configuration, edit the files corresponding to the associated hosts in the *host_vars* folder in that repository.


## Additional instructions

For more information, see
[Confluence](https://confluence.esss.lu.se/display/ECDC/Integration+Test+Environment) (login
required).


## Getting Started

### Prerequisites

Ansible (you can obtain it via `pip`).

### Installing

N/a.

## Running the tests

These tests are executed by Jenkins.

## Deployment

The Jenkinsfile clones the dm-ansible repository to deploy the software to be tested.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/ess-dmsc/project/tags).

## Authors

* **Afonso Mukai** - *Initial work* - [amues](https://github.com/amues)

See also the list of [contributors](https://github.com/ess-dmsc/integration-test/contributors) who participated in this project.

## License

This project is licensed under the BSD 2-Clause License - see the [LICENSE.md](LICENSE.md) file for details
