# Security Infrastructure Setup

This project provides a comprehensive setup for Static Application Security Testing (SAST) and Dynamic Application Security Testing (DAST) using various security tools. The infrastructure is designed to run on an Ubuntu VPS and utilizes Docker for containerization.

## Project Structure

- **scripts/**: Contains installation scripts for various dependencies and tools.
  - `install-ubuntu-deps.sh`: Installs essential packages for running security tools.
  - `install-docker.sh`: Installs Docker and Docker Compose.
  - `install-sast-tools.sh`: Installs and configures SAST tools like Semgrep and SonarQube.
  - `install-dast-tools.sh`: Installs and configures DAST tools like OWASP ZAP.
  - `verify-installation.sh`: Verifies the installation of all tools and dependencies.

- **configs/**: Contains configuration files for the security tools.
  - **semgrep/**: Configuration for Semgrep.
    - `semgrep.yml`: Defines rules and patterns for code analysis.
  - **sonarqube/**: Configuration for SonarQube.
    - `sonar-project.properties`: Configures project settings for SonarQube.
  - **owasp-zap/**: Configuration for OWASP ZAP.
    - `zap-baseline.conf`: Sets up baseline scan parameters.
  - **dependency-check/**: Configuration for Dependency-Check.
    - `suppressions.xml`: Contains suppression rules for vulnerabilities.

- **docker/**: Contains Docker Compose files for running tools in containers.
  - **sonarqube/**: Docker Compose setup for SonarQube.
    - `docker-compose.yml`: Defines services and configurations for SonarQube.
  - **zap/**: Docker Compose setup for OWASP ZAP.
    - `docker-compose.yml`: Configures OWASP ZAP for dynamic scanning.

- **ci/**: Contains CI configuration files for automated testing.
  - `sast.yml`: Workflow for running SAST tools in CI.
  - `dast.yml`: Workflow for running DAST tools in CI.

## Setup Instructions

1. **Clone the Repository**: Clone this repository to your Ubuntu VPS.
2. **Run Installation Scripts**: Execute the installation scripts in the following order:
   - `scripts/install-ubuntu-deps.sh`
   - `scripts/install-docker.sh`
   - `scripts/install-sast-tools.sh`
   - `scripts/install-dast-tools.sh`
3. **Verify Installation**: Run `scripts/verify-installation.sh` to ensure all tools are installed correctly.
4. **Configure Tools**: Modify the configuration files in the `configs/` directory as needed for your specific use case.
5. **Run Docker Containers**: Use the Docker Compose files in the `docker/` directory to start the services for SonarQube and OWASP ZAP.

## Usage

After setting up the infrastructure, you can run SAST and DAST scans on your applications. Refer to the individual tool documentation for specific usage instructions and best practices.

## Contributing

Feel free to contribute to this project by submitting issues or pull requests. Your feedback and improvements are welcome!