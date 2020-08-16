<?php
	
	require 'fpdf/fpdf.php';
	
	class PDF extends FPDF
	{
		function Header()
		{
			$this->Image('images/logo.jpg', 5, 5, 25);
			$this->SetFont("Arial", "B", 15);
			$this->Cell(0, 10, "EMPLEADOS", 0, 1, "C");
			$this->Ln(20);
		}
		
		function Footer()
		{
		$this->SetY(-15);
		$this->SetFont("Arial", "", 10);
		$this->Cell(0, 10, "Pagina ".$this->PageNo(). " / {nb}", 0, 0, "C");
		
		}
	}	