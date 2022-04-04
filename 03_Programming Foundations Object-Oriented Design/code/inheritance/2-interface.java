interface Moveable {
    // method signatures
    void move(int x, int y);
}

// The method `move` doesn't have a body, the interface enforces a *contract* that classes using the interface will define the methods of the interface.

class Asteroid implements Moveable {
    public void move(int x, int y) {
        // code...
    }
}