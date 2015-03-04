package controllers;

import java.io.*;
import com.heatonresearch.book.introneuralnet.neural.feedforward.FeedforwardLayer; 
import com.heatonresearch.book.introneuralnet.neural.activation.ActivationTANH; 
import com.heatonresearch.book.introneuralnet.neural.activation.ActivationLinear;
import com.heatonresearch.book.introneuralnet.neural.feedforward.FeedforwardNetwork; 
import com.heatonresearch.book.introneuralnet.neural.feedforward.train.Train;
import com.heatonresearch.book.introneuralnet.neural.feedforward.train.backpropagation.Backpropagation; 
import java.util.Scanner;
/**Using The Feedforward Backpropagation Neural Network *
 * NeuralNetwork: Learn the NeuralNetwork pattern with a feedforward neural network that * uses backpropagation. *
 * @author Kumara Krishnan and Kabilan Senapathy
 */
public class NeuralNetwork extends Array{
      
      Scanner scan=new Scanner(System.in);
      public static FeedforwardNetwork network;
      public void test(){
            network = new FeedforwardNetwork(); 
            network.addLayer(new FeedforwardLayer(new ActivationTANH(),18));
            network.addLayer(new FeedforwardLayer(new ActivationTANH(),22)); 
            network.addLayer(new FeedforwardLayer(new ActivationTANH(),6)); 
            network.addLayer(new FeedforwardLayer(new ActivationTANH(),1));
            network.reset(); // train the neural network
            System.out.println("ideal"+TRAIN_IDEAL[0][0]);
     
            final Train train = new Backpropagation(network, TRAIN_INPUT, TRAIN_IDEAL, 0.01, 0.5);
            int epoch = 1; 
            do { 
                  train.iteration(); 
                  System.out .println("Epoch #" + epoch + " Error:" + train.getError());
                  epoch++; 
            } while ((epoch<500000)&&(train.getError() > 8.599750569898517E-10)); // test the neural network 
            System.out.println("Neural Network Results:");
            for (int i = 0; i < TRAIN_IDEAL.length; i++) {
                  actual = network.computeOutputs(TRAIN_INPUT[i]);
                  System.out.println(TRAIN_INPUT[i][0] + "," + TRAIN_INPUT[i][1]+ ", actual=" + actual[0] + ",ideal=" + TRAIN_IDEAL[i][0]);
            } 
            System.out.println("After train");
      }
public static double actual[];
}