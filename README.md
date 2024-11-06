# Inlyse API Fetcher

This is a simple Bash script that allows you to fetch malware analysis data from the Inlyse API. By providing your API key and analysis ID, the script retrieves detailed analysis results.

## Features
- Fetch malware analysis using a specified analysis ID from Inlyse's API.
- Command-line interface with options for providing API key and analysis ID.
- Displays usage information and help text when needed.

## Prerequisites
- `curl` must be installed on your machine.

## Usage

```bash
./inlyse_api_fetcher.sh -k [API_KEY] -a [ANALYSIS_ID]
```

### Options
- `-k, --api-key`: Provide your Inlyse API key.
- `-a, --analysis-id`: Enter the analysis ID to fetch the report.
- `-h, --help`: Display help information.

### Example

```bash
./inlyse_api_fetcher.sh -k your_api_key -a analysis_id
```

This will fetch and display the malware analysis report for the given `ANALYSIS_ID`.

## Error Handling
- If no API key or analysis ID is provided, the script will exit with an error message.
- If unknown options are used, it will display usage information.

## License

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at:

```
http://www.apache.org/licenses/LICENSE-2.0
```

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
