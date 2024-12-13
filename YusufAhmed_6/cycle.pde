class cycle {
    float l=60;
    float w=720;
    float xPos;
    float yPos;

    public void cycle(float x, float y, float z) {
        xPos=x;
        yPos=y;
        fill(z);
        if (z<=0) {
            z=1;
        }
        
        fill(2550/z, z*10, 0);
        rect(xPos-20, yPos, l, w);
        
        fill(255, 255, 255);
    }
}
