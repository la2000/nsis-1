; VersionInfo.nsi
;
; This script shows you how to declare and user VARIABLES.

;--------------------------------
!include "MUI.nsh"

!define MUI_PRODUCT "User Variables"
!define MUI_VERSION "1.0"

;--------------------------------
;Configuration

  ;General
  OutFile "UserVars.exe"
  ShowInstDetails nevershow

;--------------------------------
;Pages

  !insertmacro MUI_PAGE_INSTFILES

;--------------------------------
;Languages

  !insertmacro MUI_LANGUAGE "English"

;--------------------------------
; Declaration of User Variables with command DIM, allowed charaters for variables names : [a-z][A-Z][0-9] and '_'

  DIM "Name"
  DIM "Serial"

;--------------------------------
;Installer Sections

Section "Dummy Section" SecCopyUI

     StrCpy $0 "Admin"
     StrCpy "$Name" $0
     StrCpy "$Serial" "12345"

     MessageBox MB_OK "User Name: $Name$\n$\nSerial Number: $Serial"

SectionEnd

