<?php 
include('conn.inc');
require('fpdf.php');
session_start();

class PDF extends FPDF
{
	// Page header
	function Header()
	{
		// Logo
		// $this->Image('images/logo.png',10,6,15);
		// Arial bold 15
		$this->SetFont('Arial','B',15);
		// Move to the right
		// $this->Cell(30);
		// Title
		$this->Cell(0,10,'List of Provisions',2,0,'C');
		// Move to the right
		// $this->Cell(30);
		// $this->Image('images/tig.png',180,6,15);
		// Line break
		$this->Ln(15);

		$header = array('Sl', 'Service Code', 'Citizen Name', 'Citizen Mobile No.', 'Service Date', 'Service Charge');
		// Colors, line width and bold font
		$this->SetFillColor(77, 0, 0);
		$this->SetTextColor(255);
		$this->SetDrawColor(128,0,0);
		$this->SetLineWidth(.1);
		$this->SetFont('Arial','B',10);
		// Header
		$w = array(10, 25, 45, 40, 40, 30); 
		for($i=0;$i<count($header);$i++)
			$this->Cell($w[$i],8,$header[$i],1,0,'C',true);
		$this->Ln();
	}

	// Page footer
	function Footer()
	{
		// Position at 1.5 cm from bottom
		$this->SetY(-15);
		// Arial italic 8
		$this->SetFont('Arial','',10);
		// Page number
		$this->Cell(0,10,'Page '.$this->PageNo().'/{nb}',0,0,'C');
	}

	// Colored table
	function FancyTable($header, $data)
	{
		//----------------------------------------------------
		$w = array(10, 25, 45, 40, 40, 30);
		// Color and font restoration
		$this->SetFillColor(224, 235, 235);
		$this->SetTextColor(0);
		$this->SetFont('Arial','',10);
		// Data
		$fill = false;
		$i=0;
		foreach($data as $row)
		{
			$j = $i % 6;	
			switch($j)
			{
				case 0:
					$this->Cell($w[0],8,$row,'LTRB',0,'C',$fill);
					break;
				case 1:
					$this->Cell($w[1],8,$row,'LTRB',0,'C',$fill);
					break;
				case 2:
					$this->Cell($w[2],8,$row,'LTRB',0,'C',$fill);
					break;
				case 3:
					$this->Cell($w[3], 8, $row, 'LTRB', 0, 'C', $fill);
					break;
					case 4:
						$this->Cell($w[4], 8, $row, 'LTRB', 0, 'C', $fill); 
						break;
					case 5:
						$this->Cell($w[5], 8, $row, 'LTRB', 0, 'C', $fill); 
						$this->Ln();
						$fill = !$fill;
						break;			
			}
			$i++;
			
		}
		// Closing line
		$this->Cell(array_sum($w),0,'','T');
	}
}
// ----------------------------------------------------------------------------------
$header = array('Sl', 'Service Code', 'Citizen Name', 'Citizen Mobile No.', 'Service Date', 'Service Charge');
$data = array();

$ENTRY_USER =  $_SESSION['user_id'];

$sqlQry = "SELECT * FROM provisions WHERE USER_ID = '$ENTRY_USER';";

$result = $conn->query($sqlQry);
if (!$result) {
    echo "Error: " . $conn->error;
    // Or log the error for debugging
}

$sl = 1;
while ($row = $result->fetch_assoc()) {
    $data[] = $sl;
    $data[] = $row["SERVICE_CODE"];
    $data[] = $row["CITIZEN_NAME"];
    $data[] = $row["CITIZEN_MOBILE"];
    $data[] = $row["SERVICE_DATE"];
    $data[] = $row["SERVICE_CHARGE"];
    $sl = $sl + 1;
}

$pdf = new PDF();
$pdf->AliasNbPages();
$pdf->SetFont('Arial', '', 10);
$pdf->AddPage('P', 'A4');
$pdf->FancyTable($header, $data);

// Output the PDF inline (open in the browser)
$pdf->Output("I", "provision.pdf");
?>