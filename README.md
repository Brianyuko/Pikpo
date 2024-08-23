# Pikpo Front-End Engineer Coding Test

This repository contains my submission for the Pikpo Front-End Engineer Coding Test. The project is a Flutter application managed using Melos for monorepo support. Additionally, npm is used to set up commit message conventions and pre-commit hooks.

## Project Overview

The goal of this project is to demonstrate my skills in front-end development using Flutter, including writing clean, maintainable code and implementing user interfaces. The project is structured as a monorepo managed by Melos.

## Docs & API Reference
- Pikpo Flow & ERD Diagram: [Docs](https://app.eraser.io/workspace/6AsM33SrP5HfA42DOdB1?origin=share)
- API Docs: [Pikpo Airtable](https://airtable.com/appx0QWI0Nhu9u6Ai/api/docs)

## Technologies Used

- **Framework**: Flutter
- **Architecture**: Clean Architecture
- **State Management**: Bloc
- **Monorepo Management**: Melos
- **Commit Message Convention**: npm with commitlint and husky
- **Testing**: very_good_cli with coverage enforcement
- **Integration Testing**: *Work in Progress*

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

## Requirements to run the app
1. **Install fzf**:
    ```sh
    brew install fzf
    ```
2. **Install awk** (if not already installed):
    ```sh
    brew install gawk
    ```

## How to run

1. **Run the command**:
```sh
melos run
```
2. **Follow the prompts**:
- Select a device from the list.
- Select a mode (debug, release, or profile).

## Testing with Coverage
To run the tests with coverage:
```sh
melos coverage
```
This command will:

1. Run tests with coverage enforcement using `very_good test --coverage --min-coverage 90`.
2. Generate an HTML report from the coverage data.
3. Open the HTML report in your default browser.