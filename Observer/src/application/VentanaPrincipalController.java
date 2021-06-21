package application;

import java.net.URL;
import java.util.ResourceBundle;

import org.aspectj.lang.annotation.Pointcut;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;

public class VentanaPrincipalController implements Initializable {

    /**
     * Initializes the controller class.
     */
    @FXML
    public VBox root;
    
    @FXML
    public HBox container;
    
    @FXML
    public Button btn1;
    
    @FXML
    public Button btn2;
    
    @FXML
    public Button btn3;
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
    	String styleString = "-fx-text-fill: white; -fx-font-size: 16; -fx-font-weight: bold; -fx-background-color: ";
    	btn1.setStyle(styleString + "red;");
    	btn2.setStyle(styleString + "pink;");
    	btn3.setStyle(styleString + "blue;");
    }
    
    @FXML
    void changedColorBlue(ActionEvent e){
        root.setStyle("-fx-background-color: blue");
    }
    
    @FXML
    void changedColorRed(ActionEvent e){
        root.setStyle("-fx-background-color: red");
    }
    
    @FXML
    void changedColorPink(ActionEvent e){
        root.setStyle("-fx-background-color: pink");
    }
   
}