package exception;

public class RecordDuplicatedException extends Exception   
{
	public RecordDuplicatedException() {
		super();
	}
	public RecordDuplicatedException(String msg) {
		super(msg);
	}
}
