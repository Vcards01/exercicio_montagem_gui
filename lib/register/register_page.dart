import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Exercício Montagem GUI",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue[700],
      ),
      body: _buildBody(context),
      backgroundColor: Colors.grey[200], // AQUI !!!
    );
  }

  /// Retorna o widget que compooe o body da tela
  Widget _buildBody(BuildContext context) {

    /// Exibe a caixa de dialogo
    void showMsg(BuildContext context, text) {
      FocusScope.of(context).requestFocus(FocusNode());
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Mensagem'),
            content: Text(text),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }

    return Padding(
      padding: EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "TELA DE CADASTRO",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20.0),

            //Input de Nome
            Text(
              'NOME:',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Digite o nome',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),

            //Input de Endereço
            Text(
              'ENDEREÇO:',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Digite o endereço',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),

            //Input de Email
            Text(
              'EMAIL:',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Digite o email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),

            //Botões
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Ação ao pressionar o botão "Cancelar"
                    showMsg(
                        context, "Botão Cancelar clicado"); // Fechar a página
                  },
                  child: Text('Cancelar',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue[700]),
                  ),
                ),
                SizedBox(width: 10.0),
                ElevatedButton(
                  onPressed: () {
                    // Ação ao pressionar o botão "Salvar"
                    showMsg(context,
                        "Botão Salvar clicado"); // Mostrar o diálogo de sucesso
                  },
                  child: Text('Salvar',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue[700]),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
