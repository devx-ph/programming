import javax.swing.JOptionPane; // library for GUI 

public class GUI_intro
{
	public static void main(String[] args)
	{
		String name = JOptionPane.showInputDialog("Enter your name");
		JOptionPane.showMessageDialog(null, "Hello "+name);

		int age = Integer.parseInt(JOptionPane.showInputDialog("Enter your age"));
		JOptionPane.showMessageDialog(null, "You are "+age+" years old");

		double gpa = Double.parseDouble(JOptionPane.showInputDialog("Enter your gpa"));
		JOptionPane.showMessageDialog(null, "Your gpa "+gpa);
	}
}
