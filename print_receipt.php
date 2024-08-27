<?php
session_start();
include('conn.inc');
require('fpdf.php');
$pdf = new FPDF();
$pdf->AddPage('L','A5');
$pdf->SetLineWidth(1);

$bgColor = array('r' => 245, 'g' => 245, 'b' => 220);
$pdf->SetFillColor($bgColor['r'], $bgColor['g'], $bgColor['b']);
$pdf->SetDrawColor(18, 72, 107); 
$pdf->Rect(5, 5, 200, 140.5, 'FD'); 

$pdf->Image('logo.png', 8, 8, 27);

$provision_id=trim($_GET["id"]);

if ($provision_id == "*") {
    $service_code = isset($_SESSION['RECEIPT_SERVICE']) ? $_SESSION['RECEIPT_SERVICE'] : '';
    $centre_code = isset($_SESSION['RECEIPT_CENTRE']) ? $_SESSION['RECEIPT_CENTRE'] : '';
    $citizen_name = isset($_SESSION['RECEIPT_NAME']) ? $_SESSION['RECEIPT_NAME'] : '';
    $citizen_mobile = isset($_SESSION['RECEIPT_MOBILE']) ? $_SESSION['RECEIPT_MOBILE'] : '';
    $service_charge = isset($_SESSION['RECEIPT_CHARGE']) ? $_SESSION['RECEIPT_CHARGE'] : '';
    $date = isset($_SESSION['RECEIPT_DATE']) ? $_SESSION['RECEIPT_DATE'] : '';    
}
else{
    $query="SELECT * FROM provisions WHERE ID='".$provision_id."'";
    $res1 = $conn->query($query);
    $row1 = $res1->fetch_assoc();
    $centre_code=$row1["CENTER_CODE"];
    $service_code=$row1["SERVICE_CODE"];
    $citizen_name=$row1["CITIZEN_NAME"];
    $citizen_mobile=$row1["CITIZEN_MOBILE"];
    $service_charge=$row1["SERVICE_CHARGE"];
    $date=$row1["SERVICE_DATE"];
}

$queryy="SELECT SERVICE_NAME FROM service_master WHERE SERVICE_CODE='".$service_code."'";
$res = $conn->query($queryy);
$row = $res->fetch_assoc();
$service_name=$row['SERVICE_NAME'];
 
function getTextColor($bgColor) {
    $brightness = (($bgColor['r'] * 299) + ($bgColor['g'] * 587) + ($bgColor['b'] * 114)) / 1000;
    return $brightness > 128 ? array(0, 0, 0) : array(255, 255, 255);
}

// Set text color for the heading
$pdf->SetTextColor(31, 65, 114); 

// Set font and display heading text
$pdf->SetFont('Arial', 'B', 26);
$pdf->Cell(200, 10, 'Empower Rural', 0, 1, 'C');

// Set text color for the subheading
$pdf->SetTextColor(31, 65, 114); 

$pdf->SetFont('Arial', '', 13);
$pdf->Cell(200, 9, 'A Village Level', 0, 1, 'C');
$pdf->Cell(200, 2, 'Entrepreneurship Organization', 0, 1, 'C');
// Get text color based on background color
$textColor = getTextColor($bgColor);
$pdf->SetFont('Arial', 'B', 13);
$pdf->Cell(194, -11, 'Dated: '.$date, 0, 1, 'R');
$pdf->SetFont('Arial', 'B', 17);
$pdf->Cell(200, 48, 'Service Receipt', 0, 1, 'C');
$pdf->SetY(47);
$pdf->SetX(35); // Move the lines upward
$pdf->SetFont('Arial', '', 12);
$pdf->Cell(80, 20, 'Received with thanks from Mr./Ms.', 0, 0, 'L');
$pdf->SetFont('Arial', 'UB', 13);
$pdf->Cell(50, 20, ''.$citizen_name, 0, 2, 'L');
$pdf->SetY(57);
$pdf->SetX(35);	
$pdf->SetFont('Arial', '', 12);
$pdf->Cell(50, 20, 'the sum of Rupees', 0, 0, 'L');
$pdf->SetFont('Arial', 'UB', 13);
$pdf->Cell(50, 20, 'Rs. '.$service_charge.'/-', 0, 2, 'L');
$pdf->SetY(67);
$pdf->SetX(35);
$pdf->SetFont('Arial', '', 12);
$pdf->Cell(70, 20, 'by cash / UPI for the service     ', 0, 0, 'L');	
$pdf->SetFont('Arial', 'UB', 13);
$pdf->Cell(50, 20, $service_name, 0, 2, 'L');	
$pdf->SetY(77);
$pdf->SetX(35);
$pdf->SetFont('Arial', '', 12);
$pdf->Cell(50, 20, 'Service Code ', 0, 0, 'L');	
$pdf->SetFont('Arial', 'UB', 13);
$pdf->Cell(50, 20, $service_code, 0, 2, 'L');
$pdf->SetY(87);
$pdf->SetX(35);
$pdf->SetFont('Arial', '', 12);
$pdf->Cell(50, 20, 'Centre Code', 0, 0, 'L');
$pdf->SetFont('Arial', 'UB', 13);
$pdf->Cell(50, 20, $centre_code, 0, 2, 'L');
$pdf->SetY(97);
$pdf->SetX(35);	
$pdf->SetFont('Arial', '', 12);
$pdf->Cell(50, 20, 'Citizen Mobile Number', 0, 0, 'L');
$pdf->SetFont('Arial', 'UB', 13);
$pdf->SetX(100);	
$pdf->Cell(50, 20, $citizen_mobile, 0, 2, 'L');

$pdf->SetY(122);
$pdf->SetX(5);
$pdf->SetFont('Arial', 'I', 8);
$pdf->MultiCell(0, 6, 'Please keep this receipt for your records.For any inquiries or issues, contact our support team(empowerrural.official@gmail.com).', 0, 'C');
$pdf->Output();
?>
