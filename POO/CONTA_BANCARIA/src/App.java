import java.util.Scanner;

import CLASS.*;
public class App {
    public static void main(String[] args) throws Exception {
        Scanner input = new Scanner(System.in);

        CONTA cc = new CONTA();

        cc.setConta(123);
        cc.setCliente("kiko");
        cc.setSaldo(12.56);


        

        System.out.println(
            "CONTA: "+cc.getConta()+
            "\nCLIENTE: "+cc.getCliente()+
            "\nSALDO: "+cc.getSaldo()
            );

    }
}
