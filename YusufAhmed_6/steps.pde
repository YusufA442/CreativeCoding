class steps {
    float radius;
    float xPos;
    float yPos;

    public void steps(float x, float y, float z) {
        radius=z;
        xPos=x;
        yPos=y;
        
        fill(5000/z, z*4, 0);
        circle(x, y, z);
    }
    public float radius() {
        return radius;
    }
}
