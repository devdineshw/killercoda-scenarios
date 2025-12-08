package org.wso2.samples.handlers;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.synapse.MessageContext;
import org.apache.synapse.core.axis2.Axis2MessageContext;
import org.apache.synapse.rest.AbstractHandler;
import org.wso2.carbon.apimgt.gateway.handlers.security.APISecurityException;

import java.util.Map;

public class CustomLogHandler extends AbstractHandler {
    private static final Log log = LogFactory.getLog(CustomLogHandler.class);
    private static final String headerName = "X-ClientID";
    private String APIName;

    public String getAPIName() {
        return APIName;
    }
    public void setAPIName(String APIName) {
        this.APIName = APIName;
    }
    
    public boolean handleRequest(MessageContext messageContext) {
        log.info("Incoming request from ClientID:" + getHeader(messageContext, headerName) + " to API:" + getAPIName());    
        return true;
    }

    public boolean handleResponse(MessageContext messageContext) {
        log.info("Outgoing response for ClientID:" + getHeader(messageContext, headerName) + " from API:" + getAPIName());  
        return true;
    }

    private String getHeader(MessageContext messageContext, String header) {
        return (String) getTransportHeaders(messageContext).get(header);
    }

    private Map getTransportHeaders(MessageContext messageContext) {
        return (Map) ((Axis2MessageContext) messageContext).getAxis2MessageContext().
                getProperty(org.apache.axis2.context.MessageContext.TRANSPORT_HEADERS);
    }
}
