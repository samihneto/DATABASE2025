SET SERVEROUTPUT ON;

DECLARE
    V_CARRO NUMBER := '&VALOR';
    V_ENTRADA NUMBER;
    V_SALDO NUMBER;
    V_SEIS NUMBER;
    V_DOZE NUMBER;
    V_DEZOITO NUMBER;

BEGIN

    V_ENTRADA:= V_CARRO*0.2;
    V_SALDO := V_CARRO - V_ENTRADA;
    V_SEIS := (V_SALDO/6)*1.10;
    V_DOZE := (V_SALDO/12)*1.15;
    V_DEZOITO := (V_SALDO/18)*1.20;
    dbms_output.put_line('O VALOR DA PARCELA EM 6X �: ' || V_SEIS + V_ENTRADA);
    dbms_output.put_line('O VALOR DA PARCELA EM 12X �: ' || V_DOZE + V_ENTRADA);
    dbms_output.put_line('O VALOR DA PARCELA EM 18X �: ' || V_DEZOITO + V_ENTRADA);
END;