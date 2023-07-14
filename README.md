# Data Pipeline Automation with MySQL, Python, and AWS

This repository contains the code and resources for an automated data pipeline project, developed as part of the Data Science Bootcamp at WBS Coding School. The objective of this project was to create an efficient and scalable data pipeline to collect and store external data, specifically for predicting e-scooter movement in the context of GANS, an e-scooter-sharing system.

## Project Overview

The project consists of four main components:

1. Data Collection: The project utilizes web scraping and APIs to collect relevant data. Web scraping techniques using Python's Beautiful Soup library were employed to extract demographical data from Wikipedia. Additionally, APIs like OpenWeather and Rapid API's Aerodatabox API were utilized to gather weather and flight data.

2. Data Storage: MySQL was chosen as the database management system for storing the collected data. The database schema was designed to accommodate the different types of data and their relationships. SQLAlchemy was used for data ingestion and seamless interaction between Python and the MySQL database.

3. Pipeline to the Cloud: The data pipeline was transitioned to the cloud using Amazon Web Services (AWS). An Amazon RDS MySQL instance was set up to provide a cloud-based environment for the database. AWS Lambda functions were utilized for executing the data collection and storage scripts in the cloud.

4. Pipeline Automation: Automation was achieved by utilizing AWS CloudWatch to schedule periodic triggers for the Lambda functions. This allowed for automatic data collection at specified intervals, ensuring up-to-date information for analysis.

## Repository Structure

- **data_collection**: This directory contains the code for web scraping and API data collection. The scripts `web_scraping.jpynb`, `weather.jpynb`, and `flights.jpynb` demonstrate the process of extracting data from different sources.

- **data_storage**: Here, you will find the code for establishing the MySQL database connection and creating the necessary tables. The script `database_setup.py` handles the database creation and table schema.

- **pipeline_aws**: This directory contains the code and configuration files related to deploying the data pipeline to AWS. The script `lambda_function.py` represents the Lambda function that executes the data collection and storage scripts in the cloud.

- **README.md**: The README file providing an overview of the project and instructions for running the code.

## Prerequisites

To run this project, you need an API key for the Weather API - 5-day forecast as well as AeroDataBox. Free options with monthly limited requests are available.

You also need an AWS account to run the project in the cloud.

**WARNING:** Free tier options are available for AWS, but costs may occur when choosing the wrong payment plan or exceeding limits. I am not responsible for any costs.

## Getting Started

To run the project locally or deploy it on AWS, follow these steps:

1. Clone this repository to your local machine.

2. Install the necessary dependencies by running `pip install -r requirements.txt`.

3. Modify the code files as needed, such as updating API keys or adjusting data collection parameters.

4. To run the code locally, execute the relevant scripts in the appropriate directories.

For deploying to AWS, refer to the documentation provided within the pipeline_aws directory for detailed instructions on setting up the AWS resources, Lambda functions, and scheduling triggers using AWS CloudWatch.

## Conclusion
This project showcases the power of data pipeline automation using MySQL, Python, and AWS. By following the provided code and resources, you can gain insights into web scraping, API integration, MySQL database management, and AWS deployment. Feel free to explore the code and adapt it to your own projects or use cases.

If you have any questions or suggestions, please feel free to reach out. Happy coding!
