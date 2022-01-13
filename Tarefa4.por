programa
{
	
	funcao inicio()
	{    inteiro x = -1
		faca{
		cadeia zero_a_dezenove[20] = {"zero","um","dois","tres","quatro","cinco","seis","sete","oito","nove","dez"
		,"onze","doze","treze","quatorze","quinze","dezesseis","dezesete","dezoito","dezenove"}
		cadeia vinte_a_cem[9] = {"vinte","trinta","quarenta","cinquenta","sessenta","setenta","oitenta","noventa","cem"}
		cadeia cento_a_novecentos[9] = {"cento","duzentos","trezentos","quatrocentos",
		"quinhentos", "seiscentos", "setecenstos", "oitocentos","novecentos"}
		//Biblioteca com todos os numeros em extenso que usaremos para o programa

		inteiro numero = -1 // estrutura de repetição pra impedir o usuário de colocar numeros maiores que 999 e menos que 0 
		faca{
		escreva("Escreva um numero:")
		leia(numero)
		se (numero < 0 ou numero > 999) {escreva("Numero Invalido!\n")}
		}enquanto(numero < 0 ou numero > 999)
		escreva("Numero Digitado: ")
		se(numero > 100){ // tratamos numeros maiores que 100
			inteiro centena = numero/100 // pegamos o indice da centena fazendo a divisão por 100
			inteiro resto =  numero % 100 // fazemos o modulo do numero para pegar os outros dois digitos. Ex: 632 mod 100 = 32
			se (resto == 0){ // caso não haja resto, não teremos nem dezena e nem unidade, logo é só digitar a centena
				escreva(cento_a_novecentos[centena -1])// escreve apenas a centena
				
			}senao{
				escreva(cento_a_novecentos[centena-1] + " e ")//escreve centena E...
				se(resto > 0 e resto < 20){ //cobre-se os numeros de 1 a 19 separados
				escreva(zero_a_dezenove[resto]) //escreve numeros de 1 a vinte
			}senao{
				se (resto % 10 == 0){ //se fizermos o modulo da dezena por 10 e o resultado for zero então não temos unidade
					inteiro dezena  = resto/10
					escreva(vinte_a_cem[dezena-2])// escreve dezena sem a unidade
				}senao{ // caso haja unidade no resto 
					inteiro dezena = resto/10
					inteiro unidade = resto % 10 // achamos o numero da unidade
					escreva(vinte_a_cem[dezena-2] + " e " + zero_a_dezenove[unidade])//escreve dezena E unidade 
					}
				}
			
			}
			 
		}
		se (numero == 100){ // caso especial 100
			escreva("cem")
		}
		se (numero > 19 e numero < 100){ // trata-se numeros de 20 a 99
		 	inteiro dezena =  numero/10 // achamos o numero da dezena
		 	inteiro unidade =  numero % 10 // achamos o numero da unidade
		 	se(unidade == 0){
		 		escreva(vinte_a_cem[dezena-2])//escreve apenas dezena
		 	}senao{
		 		escreva(vinte_a_cem[dezena-2] + " e " + zero_a_dezenove[unidade])//escreve dezena E unidade
		 	}
		}
		se (numero > -1 e numero < 20){ //trata-se numeros de 0 a 19
			escreva(zero_a_dezenove[numero])//escreve numero 
			}
		escreva("\n")
		}enquanto(x == -1)
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 914; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */