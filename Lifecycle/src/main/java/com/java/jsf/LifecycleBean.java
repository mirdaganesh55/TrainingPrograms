package com.java.jsf;

public class LifecycleBean {
	
	  	private boolean initialized;
	    private boolean applyRequestValues;
	    private boolean processValidations;
	    private boolean updateModelValues;
	    private boolean invokeApplication;
	    private boolean renderResponse;
	    
	    public LifecycleBean() {
	        initialized = true;
	        applyRequestValues = false;
	        processValidations = false;
	        updateModelValues = false;
	        invokeApplication = false;
	        renderResponse = false;
	    }

		public boolean isInitialized() {
			return initialized;
		}

		public void setInitialized(boolean initialized) {
			this.initialized = initialized;
		}

		public boolean isApplyRequestValues() {
			return applyRequestValues;
		}

		public void setApplyRequestValues(boolean applyRequestValues) {
			this.applyRequestValues = applyRequestValues;
		}

		public boolean isProcessValidations() {
			return processValidations;
		}

		public void setProcessValidations(boolean processValidations) {
			this.processValidations = processValidations;
		}

		public boolean isUpdateModelValues() {
			return updateModelValues;
		}

		public void setUpdateModelValues(boolean updateModelValues) {
			this.updateModelValues = updateModelValues;
		}

		public boolean isInvokeApplication() {
			return invokeApplication;
		}

		public void setInvokeApplication(boolean invokeApplication) {
			this.invokeApplication = invokeApplication;
		}

		public boolean isRenderResponse() {
			return renderResponse;
		}

		public void setRenderResponse(boolean renderResponse) {
			this.renderResponse = renderResponse;
		}
	    
		public String simulateLifecycle() {
	        applyRequestValues = true;
	        processValidations = true;
	        updateModelValues = true;
	        invokeApplication = true;
	        renderResponse = true;

	        return null;
		}
}
