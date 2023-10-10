import java.util.Scanner;

import CLASS.*;
public class App {
    public static void main(String[] args) throws Exception {
        Scanner input = new Scanner(System.in);

        int conta = input.nextInt();
        String cliente = input.nextLine();
        //Double saldo = input.nextDouble();


        CONTA cc = new CONTA(conta, cliente);

        System.out.println(cc);

    }
}
