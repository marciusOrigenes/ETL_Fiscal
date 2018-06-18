Dim args, objExcel

set args = wscript.Arguments
Set objExcel = createObject("Excel.Application")

objExcel.workbooks.Open args(0)
objExcel.visible = true

objExcel.Run "CapturaNomeExecutaOperadoraRF"

objExcel.Activeworkbook.Save
objExcel.Activeworkbook.Close(0)
objExcel.Quit

