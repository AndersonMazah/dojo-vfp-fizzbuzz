***************************************************************************************************
*                                                                                                 *
*                                              FizzBuzz                                           *
*                                                                                                 *
* Exiba uma lista de 1 a 100, um em cada linha, com as seguintes exceções:                        *
*  - Os números divisíveis por 3 devem aparecer como "Fizz", ao invés do números.                 *
*  - Os números divisíveis por 5 devem aparecer como "Buzz", ao invés do números.                 *
*  - Os números divisíveis por 3 e 5 devem aparecer como "FizzBuzz", ao invés do números.         *
***************************************************************************************************

contador = 1
Dimension lista(100)
Arqtxt = 'c:\dojo\FizzBuzz.txt'
exportarlist = ''
Do While contador <= 100
	lista(contador) = contador

	If Mod(contador, 3) == 0
		lista(contador) = "Fizz"
	Endif

	If Mod(contador, 5) == 0
		lista(contador) = "Buzz"
	Endif

	If Mod(contador, 3) == 0 And Mod(contador, 5) == 0
		lista(contador) = "FizzBuzz"
	Endif

	contador = contador + 1
Enddo

contador = 1
Do While contador <= 100
	exportarlist =  exportarlist + Chr(13) +  Alltrim(Iif (Vartype(lista(contador)) == "C", lista(contador), Str(lista(contador))))

	contador = contador + 1

Enddo

Strtofile(exportarlist, Arqtxt)
