programa
{
	funcao inteiro ganhou(inteiro matriz[][])
		{
			inteiro soma
			para(inteiro i = 0; i < 3; i++){
				soma = matriz[i][0] + matriz[i][1] + matriz[i][2]
				se (soma == 3 ou soma == -3){
				retorne 1
				}
			}
			para(inteiro i = 0; i < 3; i++){
				soma = matriz[0][i] + matriz[1][i] + matriz[2][i]
				se(soma == 3 ou soma == -3){
				retorne 1
				}
			}
			inteiro diagonal1 = matriz[0][0] + matriz[1][1] + matriz[2][2]
			inteiro diagonal2 = matriz[0][2] + matriz[1][1] + matriz[2][0]
			se(diagonal1 == 3 ou diagonal1 == -3 ou diagonal2 == 3 ou diagonal2 == -3){
			retorne 1
			}

			retorne 0
		}
	funcao inteiro velha(inteiro matriz[][]){
		inteiro contador = 0
		para(inteiro i = 0; i < 3; i++){
			para(inteiro j = 0; j < 3; j++){
				se(matriz[i][j] == 0){contador++}
				}
			}
			se(contador > 0) {
				retorne 0
			}senao{
				retorne 1
			}
				
		}
	funcao jogo(inteiro matriz[][],cadeia nomes_jogador[]){
		inteiro jogada = 0 
		inteiro linha
		inteiro coluna
		enquanto(ganhou(matriz)==0 e velha(matriz)==0){
			
			escreva("\n Jogador " + nomes_jogador[jogada%2] + "\n")
			printa_jogo(matriz)
			escreva("\nLinha: ")
			leia(linha)
			escreva("\nColuna: ")
			leia(coluna)

			se (matriz[linha-1][coluna-1] == 0){
				se ((jogada%2 + 1) == 1){
					
					matriz[linha-1][coluna-1] = 1
					
				}senao{
					matriz[linha-1][coluna-1] = -1
				}
			}senao{
				escreva("Espaço ja Preenchido")
				jogada -= 1
				}
			se (ganhou(matriz)==1){
				escreva("jogador " + nomes_jogador[jogada%2] + " ganhou!")
				}
			se (ganhou(matriz) == 0 e velha(matriz) == 1) {
				escreva("Deu velha!")
				}
			jogada += 1

			
			
			}
	}
	funcao printa_jogo(inteiro matriz[][]){
		escreva("   1    2    3\n")
		para(inteiro i = 0; i < 3; i ++){
			escreva(i+1)
			para(inteiro j = 0; j < 3; j++){
				se(matriz[i][j] == 0){
					escreva(" [ ] ")
					}
				se(matriz[i][j] == 1){
					escreva(" [X] ")
					}
				se(matriz[i][j] == -1){
					escreva(" [0] ")
					}

			}
			escreva("\n")
			}
		}
	funcao inicio()
	{
		cadeia nomes_jogador[2]
		escreva("iniciando jogo da velha...\n")
		escreva ("--------------------------\n")
    		escreva ("       Jogo da Velha      \n")
    		escreva ("--------------------------\n")
    		escreva ("\n")
		escreva("\nDigite o nome do jogador 1:")
		leia(nomes_jogador[0])
		escreva("\nDigite o nome do jogador 2:")
		leia(nomes_jogador[1])
		escreva("\n Jogador " + nomes_jogador[0] + " será X e Jogador " + nomes_jogador[1] + " será O\n")
		inteiro matriz[3][3] = {{0,0,0},{0,0,0},{0,0,0}}
		jogo(matriz,nomes_jogador)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2018; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */