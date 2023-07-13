package com.redhat.training.messaging.mdb;

import java.util.logging.Logger;
import javax.ejb.ActivationConfigProperty;
import javax.ejb.MessageDriven;
import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.TextMessage;

// This MDB listens to the JB248TestQueue and prints the message received to the console
@MessageDriven(name = "JB248TestQueueMDB", activationConfig = {
    @ActivationConfigProperty(propertyName = "connectionFactoryLookup", propertyValue = "jms/CustomCF"),
    @ActivationConfigProperty(propertyName = "user", propertyValue = "admin"),
    @ActivationConfigProperty(propertyName = "password", propertyValue = "admin"),
    @ActivationConfigProperty(propertyName = "destinationLookup", propertyValue = "jms/queue/JB248TestQueue"),
    @ActivationConfigProperty(propertyName = "destinationType", propertyValue = "javax.jms.Queue"),
    @ActivationConfigProperty(propertyName = "acknowledgeMode", propertyValue = "Auto-acknowledge") })
public class MessageReceiver implements MessageListener {

    private final static Logger LOGGER = Logger.getLogger(MessageReceiver.class.toString());

    public void onMessage(Message rcvMessage) {
        try {
                int copy = rcvMessage.getIntProperty("Copy");
                String label = rcvMessage.getStringProperty("Label");
                String message = rcvMessage.getBody(String.class);
                if (message.indexOf("FAIL") != -1) throw new RuntimeException("Message processing failed for no reason");
                LOGGER.info("Message Properties: Copy #" + copy + " [" + label + "]");
                LOGGER.info("Message Body: " + message);
        }
        catch (JMSException e) {
            throw new RuntimeException(e);
        }
    }
}
