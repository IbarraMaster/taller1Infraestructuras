-- ¿Cuántas ventas utilizaron el cupón "ULTIMO_SUSPIRO"?
select count(*) from ventas where cupon_usado = 'ULTIMO_SUSPIRO';
--250 ventas utilizaron el cupón "ULTIMO_SUSPIRO".
