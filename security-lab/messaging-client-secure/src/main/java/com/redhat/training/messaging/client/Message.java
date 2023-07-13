package com.redhat.training.view;

import javax.enterprise.context.RequestScoped;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.inject.Named;
import javax.annotation.Resource;
import javax.inject.Inject;
import javax.jms.Destination;
import javax.jms.JMSContext;
import javax.jms.JMSConnectionFactory;
import javax.jms.JMSPasswordCredential;
import javax.jms.Queue;

@RequestScoped
@Named
public class Message {
	private Integer count;
	private String label;
	private String message;

	@Inject
	@JMSConnectionFactory("java:/jms/CustomCF")
	@JMSPasswordCredential(userName="admin",password="admin")
    private JMSContext context;

    @Resource(mappedName = "java:/jms/queue/JB248TestQueue")
    private Queue queue;

	public void sendMessages() {
		try {

            for (int i = 0; i < count; i++) {
                context.createProducer()
                    .setProperty("Copy", (i+1))
                    .setProperty("Label", label)
                    .send(queue, message);
            }
            FacesContext.getCurrentInstance().addMessage(null, new FacesMessage("Messages sent successfully"));

        } catch (Exception e) {
            System.out.println (e);
        }
		
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer c) {
		this.count = c;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
