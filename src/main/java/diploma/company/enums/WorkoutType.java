package diploma.company.enums;

public enum WorkoutType {
	МАСА(3,8),
	СХУДНЕННЯ(4, 15),
	СИЛА(4,5);
	
	private int sets;
	private int reps;
	
	WorkoutType(int sets, int reps) {
		this.sets = sets;
		this.reps = reps;
	}
	
	public int getSets() {
		return sets;
	}
	
	public int getReps() {
		return reps;
	}
}
