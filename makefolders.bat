@echo off
setlocal EnableExtensions DisableDelayedExpansion
:: chcp 65001 >nul Para exibir caracteres com acentos no cmd
chcp 65001 >nul
:: /a	Sets <string> to a numerical expression that is evaluated.
set /a year=%date:~6,4% + 1
if not exist "%year%" (
	md "%year%"
	md "%year%\01-Janeiro"
	md "%year%\02-Fevereiro"
	md "%year%\03-Março"
	md "%year%\04-Abril"
	md "%year%\05-Maio"
	md "%year%\06-Junho"
	md "%year%\07-Julho"
	md "%year%\08-Agosto"
	md "%year%\09-Setembro"
	md "%year%\10-Outubro"
	md "%year%\11-Novembro"
	md "%year%\12-Dezembro"
	echo Pastas criadas
) else (
	echo A pasta "%year%" já existe
)
pause
