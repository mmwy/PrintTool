program PrinterTool;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, indylaz, uMain, uSetupApi, uSetupDiDestroyDeviceInfoList,
  uSetupDiEnumDeviceInfo, uSetupDiEnumDeviceInterfaces, uSetupDiGetClassDevs,
  uSetupDiGetDeviceRegistryProperty, uSetupDiGetInterfaceDeviceDetail, uDevGUID,
  uDevice, uDriverPrinter, uParallelPortPrinter, uPrinter, uSerialPortPrinter,
  uUSBPortPrinter, uHexToStr, uWinSpoolUtils, uNetworkPrinter;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.

