![Logo](isa-api_logo.png)

# isatab2json: ISA-Tab to JSON Converter
Version: 0.10.0

## Short Description

A container for the `isatab2json` converter from the 
[ISA-API](http://github.com/ISA-tools/isa-api).

## Description

The [ISA-API](http://github.com/ISA-tools/isa-api) is a Python 3 library that 
can create, manipulate, and convert ISA-formatted content.

The `isatab2json` converter takes a valid 
[ISA-Tab](http://isa-specs.readthedocs.io/en/latest/isatab.html) formatted set 
of files and converts them into a valid 
[ISA-JSON](http://isa-specs.readthedocs.io/en/latest/isajson.html) format 
document.

## Key features

- Converts ISA-Tab to ISA-JSON.

## Functionality

- Data Management / Study Metadata Format Conversion

## Approaches

- Metabolomics
- Isotopic Labelling Analysis

## Instrument Data Types

- MS
- NMR

## Tool Authors

- [ISA Team](http://isa-tools.org)

## Container Contributors

- [David Johnson](https://github.com/djcomlab) (University of Oxford)
- [Philippe Rocca-Serra](https://github.com/proccaserra) (University of Oxford)

## Website

- https://github.com/ISA-tools/isa-api


## Git Repository

- https://github.com/phnmnl/container-isatab2json.git

## Installation 

For local individual installation:

```bash
docker pull docker-registry.phenomenal-h2020.eu/phnmnl/isatab2json
```

## Usage Instructions

Available on PhenoMeNal Galaxy instances under PhenoMeNal H2020 Tools -> Study 
Metadata Format Conversion

Example direct docker usage:

```bash
docker run $PWD:/data docker-registry.phenomenal-h2020.eu/phnmnl/isatab2json /data/isatab_files/
```

## Publications

- Sansone, Susanna-Assunta, Rocca-Serra, Philippe, Gonzalez-Beltran, Alejandra, 
Johnson, David, &amp; ISA Community. (2016, October 28). ISA Model and 
Serialization Specifications 1.0. Zenodo. http://doi.org/10.5281/zenodo.163640
- Sansone, Susanna-Assunta, et al. (2012, January 27). Towards interoperable 
bioscience data. Nature Genetics 44, 121–126. http://doi.org/10.1038/ng.1054
