<?php
	
	require 'plantilla.php';
	require 'conexion.php';
	
	$estatus = $_POST['estatus'];
	
	$sql = "SELECT id, nombre, telefono, fecha_nacimiento, estado_civil FROM empleados WHERE activo=$estatus";
	$resultado = $mysqli->query($sql);
	
	$pdf = new PDF("P", "mm", "LETTER");
	$pdf->AliasNbPages();
	$pdf->AddPage();
	$pdf->SetFont("Arial", "B", 12);
	
	$pdf->SetFillColor(0,0,0);
	$pdf->SetTextColor(255,255,255);
	
	$pdf->Cell(50,5,"Nombre", 1, 0, "C", 1);
	$pdf->Cell(50,5,"Telefono", 1, 0, "C", 1);
	$pdf->Cell(50,5,"Fecha Nacimiento", 1, 0, "C", 1);
	$pdf->Cell(50,5,"Estado civil", 1, 1, "C", 1);
	
	$pdf->SetFont("Arial", "", 12);
	$pdf->SetFillColor(255,255,255);
	$pdf->SetTextColor(0,0,0);
	
	while($row = $resultado->fetch_assoc()){
		$pdf->Cell(50,5,$row["nombre"], 1, 0, "L");
		$pdf->Cell(50,5,$row["telefono"], 1, 0, "L");
		$pdf->Cell(50,5,$row["fecha_nacimiento"], 1, 0, "L");
		$pdf->Cell(50,5,$row["estado_civil"], 1, 1, "L");
	}
	
	$pdf->Output();
	
?>
