# Pikpo Front-End Engineer Coding Test

This repository contains my submission for the Pikpo Front-End Engineer Coding Test. The project is a Flutter application managed using Melos for monorepo support. Additionally, npm is used to set up commit message conventions and pre-commit hooks.

## Project Overview

The goal of this project is to demonstrate my skills in front-end development using Flutter, including writing clean, maintainable code and implementing user interfaces. The project is structured as a monorepo managed by Melos.

## Technologies Used

- **Framework**: Flutter
- **Monorepo Management**: Melos
- **Commit Message Convention**: npm with commitlint and husky
- **Testing**: very_good_cli with coverage enforcement

## Setup Instructions

1. **Ensure you have `very_good_cli` and `melos` installed globally**:
    ```sh
    dart pub global activate very_good_cli
    dart pub global activate melos
    ```

2. **Clone the repository**:
    ```sh
    git clone https://github.com/Brianyuko/Pikpo.git
    cd pikpo
    ```

3. **Install npm dependencies**:
    ```sh
    npm install
    ```

4. **Install Flutter dependencies**:
    ```sh
    melos bootstrap
    ```

## How to run

To see all available commands, run:
```sh
melos run
```

## Testing with Coverage
To run the tests with coverage:
```sh
melos coverage
```
This command will:

1. Run tests with coverage enforcement using `very_good test --coverage --min-coverage 90`.
2. Generate an HTML report from the coverage data.
3. Open the HTML report in your default browser.

## Running in Different Modes

- Debug Mode: Use the `dev prefix` to run the application in debug mode. This is useful for development and debugging.
To run the `pikpo_app` or `pikpo_widgetbook` in debug mode:
    ```sh
    melos dev_app
    ```
    ```sh
    melos dev_widget
    ```
- Profile Mode: Use the `profile prefix` to run the application in profile mode. This is useful for profiling the application.
To run the `pikpo_app` or `pikpo_widgetbook` in profile mode:
    ```sh
    melos profile_app
    ```
    ```sh
    melos profile_widget
    ```
- Release Mode: Use the `release prefix` to run the application in release mode. This is useful for production.
To run the `pikpo_app` or `pikpo_widgetbook` in release mode:
   ```sh
    melos release_app
    ```
    ```sh
    melos release_widget
    ```