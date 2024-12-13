class steps {
    float radius;
    float xPos;
    float yPos;

    public void steps(float x, float y, float z) {
        radius=z+5;
        xPos=x;
        yPos=y;
        
        fill(5000/z, z*4, 0);
        circle(xPos, yPos, radius);
    }
    public float radius() {
        return radius;
    }
}
