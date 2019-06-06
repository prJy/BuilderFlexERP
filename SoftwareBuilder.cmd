@echo off
Title Gerador de Versoes do Sistema   
cls
:menu
cls
color 80

date /t
echo  ================================== 
echo  *-------Anderson Oliveira--------*
echo  ================================== 
echo  Computador: %computername%        
echo  ================================== 
echo  Usuario: %username% 
echo  ==================================                   
echo            Gerar Build de:
echo  ==================================
echo * 1. Tudo                          * 
echo * 2. Faturamento                   *
echo * 3. Financeiro                    *
echo * 4. Cupom Fiscal ECF/SAT          *
echo * 5. Seguranca                     * 
echo * 6. Atualizador de Banco          * 
echo * 7. FlexReport                    * 
echo * 8. Sair                          *
echo  ==================================

set /p opcao=  Escolha uma opcao: 
echo ------------------------------
if %opcao% equ 1 goto buildAll
if %opcao% equ 2 goto buildFaturamento
if %opcao% equ 3 goto buildFinanceiro
if %opcao% equ 4 goto buildCupomFiscal
if %opcao% equ 5 goto buildSeguranca
if %opcao% equ 6 goto buildfxDbAtt
if %opcao% equ 7 goto buildfxRep
if %opcao% equ 8 goto sairSistema
if %opcao% GEQ 9 goto erro

:buildAll
cls
echo ==================================
echo *          Todo Sistema          *
echo ==================================
echo *----Client Faturamento-----*
call fat/client.bat
echo *----Server Faturamento-----*
call fat/server.bat
echo *----Client Financeiro------*
call fin/client.bat
echo *----Server Financeiro------*
call fin/server.bat
echo *----Client CupomFiscal-----*
call ecf/client.bat
echo *----Server CupomFiscal-----*
call ecf/server.bat
echo *----Client Seguranca-------*
call seg/client.bat
echo *----Server Seguranca-------*
call seg/server.bat
echo *----Atualizador Db---------*
call attdb/fxattdb.bat
echo *----FlexReport-----*
call rep/fxrep.bat

pause
goto menu

:buildFaturamento
cls
echo ==================================
echo *          Faturamento           *
echo ==================================
echo * Client
call fat/client.bat
echo * Server
call fat/server.bat
pause
goto menu

:buildFinanceiro
cls
echo ==================================
echo *          Financeiro            *
echo ==================================
echo * Client
call fin/client.bat
echo * Server
call fin/server.bat
pause
goto menu

:buildCupomFiscal
cls
echo ==================================
echo *         Cupom Fiscal           *
echo ==================================
echo * Client
call ecf/client.bat
echo * Server
call ecf/server.bat
pause
goto menu

:buildSeguranca
cls
echo ==================================
echo *           Seguranca            *
echo ==================================
echo * Client
call seg/client.bat
echo * Server
call seg/server.bat
pause
goto menu

:buildfxDbAtt
cls
echo ==================================
echo *   Atualizador Banco de Dados   *
echo ==================================
echo * fxdbAtt
call attdb/fxattdb.bat
pause
goto menu

:buildfxRep
cls
echo ==================================
echo *           Relatorios           *
echo ==================================
echo * fxRep
call rep/fxrep.bat
pause
goto menu

:sairSistema
cls
exit

:erro
echo ==============================================
echo * Opcao Invalida! Escolha outra opcao do menu *
echo ==============================================
pause
goto menu