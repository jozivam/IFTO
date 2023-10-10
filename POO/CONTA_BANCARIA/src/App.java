import java.util.Scanner;

import CLASS.*;
public class App {
    public static void main(String[] args) throws Exception {
        Scanner ler = new Scanner(System.in);

        CONTA cc = new CONTA();

       int conta = ler.nextInt();
       String cliente = ler.nextLine();
       double saldo = ler.nextDouble();

       cc.setConta(conta);
       cc.setCliente(cliente);
       cc.setSaldo(saldo);


        

        System.out.println(
            "CONTA: "+cc.getConta()+
            "\nCLIENTE: "+cc.getCliente()+
            "\nSALDO: "+cc.getSaldo()
        );

    }
}
