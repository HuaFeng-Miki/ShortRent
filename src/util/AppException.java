package util;

public class AppException extends Exception{
	private int exceptionCode;
	private String message;
	
	/**
	 *  构造方法，设置异常消息
	 *  
	 *	@param message 异常消息 
	 */
	public AppException(String message){
		this.message = message;
	}
	
	/**
	 * 	构造方法，设置异常消息和异常编号
	 * 
	 *	@param message 异常消息 
	 *	@param exception 异常编号
	 */
	public AppException(String message, int exceptionCode){
		this.message = message ;
		this.exceptionCode = exceptionCode;
	}
	
	/**
	 * 获取异常编号
	 * 
	 * @return 异常编号
	 */
	public int getExceptionCode(){
		return exceptionCode;
	}
	
	/**
	 * 获取异常消息
	 * 
	 * @return 异常消息
	 */
	public String getMessage(){
		return message;
	}
	
	/**
	 * 获取详细的异常消息
	 * 
	 * @return detailMessage
	 */
	public String getDetailMessage(){
		String detailMessage = "Detail message:" + exceptionCode + " " + message;
		return detailMessage;
	}
	
	
}
