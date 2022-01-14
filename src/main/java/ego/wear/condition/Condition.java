package ego.wear.condition;

public class Condition {
	private String conditionName;
	private Object conditionValue;
	public Condition(String conditionName, Object conditionValue) {
		super();
		this.conditionName = conditionName;
		this.conditionValue = conditionValue;
	}
	public String getConditionName() {
		return conditionName;
	}
	public void setConditionName(String conditionName) {
		this.conditionName = conditionName;
	}
	public Object getConditionValue() {
		return conditionValue;
	}
	public void setConditionValue(String conditionValue) {
		this.conditionValue = conditionValue;
	}
	
}
