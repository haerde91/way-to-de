============================================================
WINDOW FUNCTIONS — PRACTICAL CHEAT SHEET
============================================================

GŁÓWNA ZASADA
------------------------------------------------------------
Window Function używamy, gdy chcemy policzyć coś na poziomie
grupy / kolejności, ALE NIE CHCEMY TRACIĆ POJEDYNCZYCH REKORDÓW.

GROUP BY:
1 rekord → 1 grupa

WINDOW FUNCTION:
1 rekord → nadal 1 rekord + dodatkowa metryka


PODSTAWOWA SKŁADNIA
------------------------------------------------------------

FUNCTION(...) OVER (
    PARTITION BY ...
    ORDER BY ...
)

PARTITION BY
→ dzieli dane na niezależne grupy
→ podobne do GROUP BY, ale NIE zmienia liczby rekordów

ORDER BY
→ określa kolejność rekordów wewnątrz okna
→ bardzo ważne dla rankingów, LAG/LEAD, running totals itd.


============================================================
1. AGREGACJE WINDOW
============================================================

SUM() OVER()
AVG() OVER()
MIN() OVER()
MAX() OVER()
COUNT() OVER()

Przykład:

AVG(order_value) OVER (
    PARTITION BY customer_id
)

→ średnia wartość zamówień klienta
→ każdy order nadal zostaje w wyniku.


============================================================
2. RUNNING TOTAL
============================================================

SUM(order_value) OVER (
    PARTITION BY customer_id
    ORDER BY order_date
)

→ suma narastająca

Czyli np.:

100
150
250
400


Można również użyć z miesiącem:

SUM(order_value) OVER (
    PARTITION BY customer_id,
                 date_trunc('month', order_date)
    ORDER BY order_date
)


============================================================
3. ROW_NUMBER()
============================================================

ROW_NUMBER() OVER (
    PARTITION BY customer_id
    ORDER BY order_value DESC
)

→ nadaje każdemu rekordowi unikalny numer.

Przykład:

1000 → 1
900  → 2
900  → 3
800  → 4

Używaj gdy:
→ każdy rekord musi mieć unikalną pozycję.


============================================================
4. RANK()
============================================================

RANK() OVER (
    PARTITION BY category
    ORDER BY revenue DESC
)

→ ranking z remisami.

1000 → 1
1000 → 1
800  → 3
700  → 4

Po remisie pojawia się luka.


============================================================
5. DENSE_RANK()
============================================================

DENSE_RANK() OVER (
    PARTITION BY category
    ORDER BY revenue DESC
)

→ ranking z remisami bez luk.

1000 → 1
1000 → 1
800  → 2
700  → 3


ROW_NUMBER vs RANK vs DENSE_RANK
------------------------------------------------------------

ROW_NUMBER:
1000 → 1
1000 → 2
800  → 3

RANK:
1000 → 1
1000 → 1
800  → 3

DENSE_RANK:
1000 → 1
1000 → 1
800  → 2


============================================================
6. LAG()
============================================================

LAG(value) OVER (
    PARTITION BY customer_id
    ORDER BY order_date
)

→ poprzednia wartość.

Przykład:

100 → NULL
150 → 100
200 → 150
300 → 200

Typowe zastosowania:
→ różnica vs poprzedni miesiąc
→ zmiana ceny
→ zmiana sprzedaży
→ poprzednie zamówienie


============================================================
7. LEAD()
============================================================

LEAD(value) OVER (
    PARTITION BY customer_id
    ORDER BY order_date
)

→ następna wartość.

100 → 150
150 → 200
200 → 300
300 → NULL


LAG = poprzedni
LEAD = następny


============================================================
8. FIRST_VALUE()
============================================================

FIRST_VALUE(value) OVER (
    PARTITION BY customer_id
    ORDER BY order_date
)

→ pierwsza wartość według określonej kolejności.


============================================================
9. LAST_VALUE()
============================================================

LAST_VALUE(value) OVER (
    PARTITION BY customer_id
    ORDER BY order_date
    ROWS BETWEEN UNBOUNDED PRECEDING
             AND UNBOUNDED FOLLOWING
)

→ ostatnia wartość całej partycji.

WAŻNE:
LAST_VALUE() może zwrócić bieżący rekord,
jeśli nie ustawimy odpowiedniego Window Frame.


============================================================
10. WINDOW FRAME
============================================================

Określa zakres rekordów używany przez Window Function.

ROWS BETWEEN
    ... AND ...

Najważniejsze:

UNBOUNDED PRECEDING
→ początek partycji

CURRENT ROW
→ bieżący rekord

UNBOUNDED FOLLOWING
→ koniec partycji

2 PRECEDING
→ dwa rekordy wcześniej

2 FOLLOWING
→ dwa rekordy później


Przykład moving average:

AVG(order_value) OVER (
    ORDER BY order_date
    ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
)

→ średnia z bieżącego + 2 poprzednich rekordów.


Running total:

SUM(order_value) OVER (
    ORDER BY order_date
    ROWS BETWEEN UNBOUNDED PRECEDING
             AND CURRENT ROW
)


WAŻNE:
PARTITION BY ≠ Window Frame

PARTITION BY:
→ mówi JAKIE rekordy należą do grupy.

FRAME:
→ mówi JAKI FRAGMENT tej grupy bierzemy
  dla konkretnego rekordu.


============================================================
11. NTILE()
============================================================

NTILE(n) OVER (
    PARTITION BY customer_id
    ORDER BY order_value DESC
)

→ dzieli rekordy na możliwie równe grupy.

NTILE(3):

1 → najwyższe wartości
2 → środkowe
3 → najniższe

Przy nierównej liczbie rekordów grupy mogą mieć różną liczbę
rekordów o maksymalnie 1.


============================================================
12. PERCENT_RANK()
============================================================

PERCENT_RANK() OVER (
    PARTITION BY customer_id
    ORDER BY order_value DESC
)

→ względna pozycja rekordu w grupie.

Wartości:
0 → pierwsza pozycja
1 → ostatnia pozycja

Przydatne gdy chcemy wiedzieć, gdzie rekord znajduje się
względem pozostałych rekordów.


============================================================
13. CUME_DIST()
============================================================

CUME_DIST() OVER (
    PARTITION BY customer_id
    ORDER BY order_value DESC
)

→ pokazuje skumulowany udział / pozycję względem całej grupy.

Wynik:
0 < value <= 1

Przydatne np. do odpowiedzi:
„Jak duża część obserwacji znajduje się na tej pozycji
lub wcześniej w uporządkowanym rozkładzie?”


PERCENT_RANK vs CUME_DIST
------------------------------------------------------------

PERCENT_RANK:
→ względny ranking
→ zaczyna od 0

CUME_DIST:
→ skumulowana dystrybucja
→ wartości od >0 do 1


============================================================
14. NTH_VALUE()
============================================================

NTH_VALUE(value, n) OVER (
    PARTITION BY customer_id
    ORDER BY order_value DESC
    ROWS BETWEEN UNBOUNDED PRECEDING
             AND UNBOUNDED FOLLOWING
)

→ pobiera wartość z konkretnej pozycji.

NTH_VALUE(order_value, 2)
→ druga wartość w kolejności.

Przydatne np.:
→ second-highest order
→ third-highest salary


============================================================
NAJWAŻNIEJSZE: JAK MYŚLEĆ
============================================================

Problem:
„Chcę policzyć średnią/sumę dla klienta,
ale nadal chcę widzieć każde zamówienie.”

→ AVG/SUM OVER + PARTITION BY


Problem:
„Chcę numerować rekordy.”

→ ROW_NUMBER


Problem:
„Chcę ranking i remisy.”

→ RANK / DENSE_RANK


Problem:
„Potrzebuję poprzedniego rekordu.”

→ LAG


Problem:
„Potrzebuję następnego rekordu.”

→ LEAD


Problem:
„Chcę podzielić dane na N grup.”

→ NTILE


Problem:
„Chcę względną pozycję rekordu.”

→ PERCENT_RANK / CUME_DIST


Problem:
„Potrzebuję konkretnej pozycji z okna.”

→ NTH_VALUE


Problem:
„Chcę moving average / running total
z określonym zakresem rekordów.”

→ WINDOW FRAME


============================================================
NAJWAŻNIEJSZA ZASADA NA JUNIORA
============================================================

Nie musisz pamiętać wszystkich funkcji ani składni na pamięć.

Ważniejsze jest:

1. Rozpoznać problem.
2. Wiedzieć, że Window Function może go rozwiązać.
3. Wiedzieć mniej więcej, której funkcji szukać.
4. Umieć dobrać PARTITION BY.
5. Umieć dobrać ORDER BY.
6. Rozumieć, czy potrzebujesz Window Frame.
7. Składnię w razie potrzeby sprawdzić.

WINDOW FUNCTIONS = narzędzie do pracy na grupie/kolejności
BEZ utraty granularności wyniku.
============================================================