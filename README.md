# Docker based govuk-prototype-kit

This project allows you to spin up an instance of the [govuk-prototype-kit](https://github.com/alphagov/govuk-prototype-kit) inside of Docker. You can edit the nodejs project files and HTML views on your local machine and they will be hot reloaded by the container.

This is useful for a situation were installing NodeJS or the build tools required (C toolchain for example) is too complicated or time consuming for the end user.

----

## Getting Started

To run this project you will need three things:

- Docker
    - Get it [here](https://www.docker.com/get-started)
- Python
- [pipenv](https://pipenv.readthedocs.io/en/latest/)
    - For Mac I recommend installing it through [Homebrew](https://brew.sh/):
        ```bash
        brew install pipenv
        ```
    - For Linux and other systems you can use pip:
        ```bash
        # ensure pip and setuptools are up-to-date
        pip install --upgrade pip
        pip install --upgrade setuptools

        pip install pipenv
        ```

---

## Running the Prototype Kit

Ensure Docker is running before starting, then open a terminal in the directory you cloned the repository to and run:

```bash
./up.sh
```

If you are on Windows or another non unix-like system, you can run:

```bash
pipenv run docker-compose up
```

The application is ready for use when you see a message similar to the below displayed:

```
gov-uk-prototype-kit_1  | GOV.UK Prototype Kit v8.1.0
gov-uk-prototype-kit_1  |
gov-uk-prototype-kit_1  | NOTICE: the kit is for building prototypes, do not use it for production services.
gov-uk-prototype-kit_1  |
gov-uk-prototype-kit_1  | Listening on port 3000   url: http://localhost:3000
```

You can close the app at any try by pressing `control` + `c`

---

## Editing the Project

When the application is up and running you should find that the latest version of the prototype kit is now in the `govuk-prototype-kit` directory.

You are free to edit and add files as need and the application will hot reload these changes.
