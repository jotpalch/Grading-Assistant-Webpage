# Grading-Assistant-Webpage

Grading-Assistant-Webpage is a web application designed to visualize the output from the Grading-Assistant. This repository contains a Dockerized Flask application that serves the JSON output from Grading-Assistant as a webpage.

## Getting Started

### Prerequisites

- Docker
- JSON output file(s) from Grading-Assistant

### Installation

1. Clone the repository
```bash
git clone https://github.com/jotpalch/grading-assistant-webpage.git
```

2. Navigate to the repository folder
```bash
cd grading-assistant-webpage
```

### Usage

1. Put the JSON file dump from Grading-Assistant into the `json` folder. You can rename the JSON file as you wish, the name of the file will be used as the project name on the webpage.

2. Make the `run.sh` script executable:
```bash
chmod +x run.sh
```

3. Run the `run.sh` script. This script will pull the latest Docker image, and run a Docker container with the necessary configurations:
```bash
./run.sh
```

The application should now be running at `http://localhost:30005`.

## Files

- `run.sh`: A shell script to pull the Docker image and run the Docker container.
- `main.py`: The main Flask application.

## Code Overview

- `main.py`: This file contains a Flask application that serves the JSON files in the `json` folder as webpages. The `index` route lists all the projects (JSON files) available, and the `project` route serves a specific project's data as a webpage.
