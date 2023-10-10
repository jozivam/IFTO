package CLASS;

public class CONTA {
    private int Conta;
    private String Cliente;
    

    public CONTA(int Conta, String Cliente) {
        this.Conta = Conta;
        this.Cliente = Cliente;
        
    }

    public int getConta() {
        return this.Conta;
    }

    public void setConta(int Conta) {
        this.Conta = Conta;
    }

    public String getCliente() {
        return this.Cliente;
    }

    public void setCliente(String Cliente) {
        this.Cliente = Cliente;
    }

    public Double getSaldo() {
        return this.Saldo;
    }

    public void setSaldo(Double Saldo) {
        this.Saldo = Saldo;
    }


}
