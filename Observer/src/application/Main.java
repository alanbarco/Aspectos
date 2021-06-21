package application;

import java.io.IOException;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class Main extends Application {
	
	private static Scene scene;
	
	@Override
	public void start(Stage stage) {
		try {
			scene = new Scene(loadFXML("VentanaPrincipal"), 640, 480);
		} catch (IOException e) {
			e.printStackTrace();
		}
		stage.setTitle("Observer AspectJ");
        stage.setScene(scene);
        stage.show();
	}
	
	static void setRoot(String fxml) throws IOException {
        scene.setRoot(loadFXML(fxml));
    }

    private static Parent loadFXML(String fxml) throws IOException {
        FXMLLoader fxmlLoader = new FXMLLoader(Main.class.getResource(fxml + ".fxml"));
        return fxmlLoader.load();
    }

	public static void main(String[] args) {
		launch(args);
	}
	
}