<?php
include('conn.inc'); // Include your database connection file

// Query to fetch data from the provisions table
$sqlQry = "SELECT * FROM provisions";
$result = $conn->query($sqlQry);

// Create a CSV file in memory
$csvFile = fopen('php://temp', 'w');

// Add CSV headers
$headers = array(
    'Serial No.',
    'Service Code',
    'Citizen Name',
    'Citizen Mobile',
    'Service Date',
    'Service Charge(Rs.)'
);
fputcsv($csvFile, $headers);

// Add data to the CSV file
if ($result && $result->num_rows > 0) {
    $i = 1;
    while ($row = $result->fetch_assoc()) {
        $csvData = array(
            $i,
            $row["SERVICE_CODE"],
            $row["CITIZEN_NAME"],
            $row["CITIZEN_MOBILE"],
            $row["SERVICE_DATE"],
            $row["SERVICE_CHARGE"]
        );
        fputcsv($csvFile, $csvData);
        $i++;
    }
}

// Set headers to download the CSV file
header('Content-Type: text/csv');
header('Content-Disposition: attachment; filename="provisions_data.csv"');

// Output the CSV file
rewind($csvFile);
echo stream_get_contents($csvFile);

// Close the CSV file
fclose($csvFile);

// Close the database connection
$conn->close();
?>