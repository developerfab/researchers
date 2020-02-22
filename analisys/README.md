# Analisys

The idea with these files are try to know what are the main components that affect the model.

## Requeriments

* virtualenv
* python3

## How to run?

1. Create a new virtualenv space
2. Run the command

```bash
$ pip3 install -r requeriments.txt
```
3. Run the file

```bash
$ python3 analisys.py
```

This file will return the column names in `data/INVESTIGADORES_RECONOCIDOS_2019.csv`

## Analisys model

After to extract the column names, in the file `relaciones.csv` is related each field with a model create in `models` file.

## Database model

In the image `database_model.jpg` is shown the database model to resolve the proposed problem.

![Database model](https://raw.githubusercontent.com/developerfab/researchers/master/analisys/database_model.jpg)
