# ContractFull, a rapid and comprehensive static analysis tool for Ethereum smart contracts .This project is the supporting material of the paper titled "ContractFull:a rapid and comprehensive static analysis tool for Ethereum smart contracts", including: data set, test results, source code, etc.

ContractFull is a Solidity static analysis framework written in Python 3.10. The tool generates a detailed vulnerability report through an integrated solidity compiler, precise contract information extraction, comprehensive semantic intermediate representation transformation, and differentiated vulnerability pattern matching. Moreover, ContractFull introduces the first fully automated, end-to-end analysis process, spanning from source code to vulnerability detection, in the parsing and security inspection of smart contracts.Experimental results demonstrate that ContractFull exhibits robust performance across three distinct datasets.

- [Folder introduction]
- [Bash Command]
- [How to Install]
- [Publications]

## Folder introduction

### Dataset1
The folder "Dataset1" includes 211 smart contract files in Dataset1, and the detection results of each tool.

### Dataset2
The folder "Dataset2" includes 14711  Ethereum smart contract files in Dataset2, and the detection results of each tool.

### Dataset3
The folder "Dataset3" includes 10 real Ethereum smart contracts in DB31 , 10 Ethereum security incidents in DB32, and the detection results of each tool.

### ContractFull
The folder "contractfull" includes all the source code of ContractFull and its installation and usage tutorials. We promise to disclose all the source code when the paper is accepted.

### Vulnerability_Severity_Mapping.xlsx
The file "Vulnerability_Severity_Mapping.xlsx" includes the mapping of vulnerabilities_Severity detected by tools in 131 vulnerabilities.

### Contract_VulnerabilityDetection.png
The image "Contract_VulnerabilityDetection.png" display Vulnerability classification status.

### VulnerabilityDescription.xlsx
The file "VulnerabilityDescription.xlsx" describes the introduction of 138 vulnerabilities.


## Bash Command

Run ContractFull on a single file:
```bash
python3 -m main_json ../tests/low_level_calls.sol
```
Run ContractFull on an entire folder:
```bash
python3 -m main_json ../tests
```
The test results are stored in the "result" folder.

### Detectors
See Contract_VulnerabilityDetection.png

## How to install
ContractFull requires Python 3.10 and Solidity-parser (pip install solidity-parser),this package requires further secondary development.

### Using Docker
Use the `contractfull:latest` docker image. It includes all of our security tool ,Dateset1 and some test files.

```bash
docker pull ypl101010/contractfull
sudo docker run -it ypl101010/contractfull /bin/bash
cd contractfull
python3 -m main_json ../tests/low_level_calls.sol

```
### License
ContractFull is licensed and distributed under the AGPLv3 license.


## Publications

ContractFull holds most advantages of static analysis tools like SmartFast and SmartCheck. Also, in order to make ContractFull more functional and comprehensive, it combines some auxiliary functions of these tools. Therefore, we appreciate these excellent functions provided by these tools.

### References

- [SmartFast: an accurate and robust formal analysis tool for Ethereum smart contracts] Empir Software Eng 27:197. https://doi.org/10.1007/s10664-022-10218-2
- [Slither: A Static Analysis Framework For Smart Contracts](https://arxiv.org/abs/1908.09878), Josselin Feist, Gustavo Grieco, Alex Groce - WETSEB '19
- [SmartCheck: Static Analysis of Ethereum Smart Contracts](https://orbilu.uni.lu/bitstream/10993/35862/3/smartcheck-paper.pdf), Sergei Tikhomirov, Ekaterina Voskresenskaya, Ivan Ivanitskiy, Ramil Takhaviev, Evgeny Marchenko, Yaroslav Alexandrov - WETSEB '18