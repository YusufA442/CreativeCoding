void setup() {
    size(640, 480);
    int weeks=10;
    int daysInWeek=7;

    String[] caloriesString = loadStrings("data.txt");
    Integer[] calories = new Integer[daysInWeek*weeks];
    for (int i = 0; i < caloriesString.length; i++) {
        calories[i]=Integer.parseInt(caloriesString[i]);
    }

    String[] cycle_speedMaxString = loadStrings("cycledata.txt");
    Float[] cycle_speedMax = new Float[weeks];
    for (int i = 0; i < cycle_speedMaxString.length; i++) {
        cycle_speedMax[i]=Float.parseFloat(cycle_speedMaxString[i]);
    }

    int xPos=0;
    for (int i = 0; i<cycle_speedMax.length; i++) {

        cycle c = new cycle();
        c.cycle(xPos+40, 0, cycle_speedMax[i]);
        xPos+=60;
    }


    int x=0;
    int y=0;
    for (int i = 0; i<calories.length; i++) {

        y+=10;
        steps c = new steps();
        c.steps(6*x+50, 6*y, calories[i]/5);
        if (y>60) {
            x+=10;
            y=0;
        }
    }
}
