import java.awt.HeadlessException;
import java.sql.*;
import javax.swing.JOptionPane;
/**
 *
 * @author glass
 */
public class Login extends javax.swing.JFrame {
    
    private Connection con;
    private ResultSet rs;
  
    public Login() {
        initComponents();
        //connect to database
        try
        {
            Class .forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","lh123456");
        }
        catch(ClassNotFoundException | SQLException e)
        {
            System.out.println(e.getMessage());
        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        jPasswordField1 = new javax.swing.JPasswordField();
        jLabel4 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jLabel3 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(null);

        jLabel1.setFont(new java.awt.Font("Lucida Grande", 3, 18)); // NOI18N
        jLabel1.setText("UserID");
        getContentPane().add(jLabel1);
        jLabel1.setBounds(300, 80, 50, 22);
        getContentPane().add(jTextField1);
        jTextField1.setBounds(350, 80, 130, 26);

        jLabel2.setFont(new java.awt.Font("Lucida Grande", 3, 18)); // NOI18N
        jLabel2.setText("Password");
        getContentPane().add(jLabel2);
        jLabel2.setBounds(250, 120, 90, 22);
        getContentPane().add(jPasswordField1);
        jPasswordField1.setBounds(350, 120, 130, 26);

        jLabel4.setFont(new java.awt.Font("Lucida Sans", 2, 13)); // NOI18N
        jLabel4.setText("Hotel Reservation System");
        getContentPane().add(jLabel4);
        jLabel4.setBounds(320, 30, 160, 16);

        jButton1.setText("Login");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton1);
        jButton1.setBounds(340, 160, 70, 29);

        jButton2.setText("Cancel");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton2);
        jButton2.setBounds(410, 160, 70, 29);

        jLabel3.setIcon(new javax.swing.ImageIcon("/Users/glass/Downloads/login2.jpg")); // NOI18N
        jLabel3.setText("jLabel3");
        getContentPane().add(jLabel3);
        jLabel3.setBounds(0, 0, 850, 480);

        setSize(new java.awt.Dimension(847, 485));
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        
        //check if the user and password stored in database match to what user typed in textfields
        try{
            int flag=0;
            String sql="Select * from login;";
            rs = con.createStatement().executeQuery(sql);
            String user=jTextField1.getText();
            String pswd =new String(jPasswordField1.getPassword());
            while(rs.next())
            {
                if(user.equals(rs.getString(1)) && pswd.equals(rs.getString(2)))
                {
                    flag=1;
                    break;
                }
            }
            if(flag==1)
            {
                dispose();
                Navigation nv=new Navigation();
                nv.setVisible(true);
            }
            else
            {
                JOptionPane.showMessageDialog(this, "The UserID and password are not matched", "Error",JOptionPane.ERROR_MESSAGE);
            }
        }
        catch(HeadlessException | SQLException ex){
        }
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        dispose();
    }//GEN-LAST:event_jButton2ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Login().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JPasswordField jPasswordField1;
    private javax.swing.JTextField jTextField1;
    // End of variables declaration//GEN-END:variables
}
