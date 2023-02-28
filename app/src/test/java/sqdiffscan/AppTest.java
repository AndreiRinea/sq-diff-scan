package sqdiffscan;

import org.junit.Test;

import static org.junit.Assert.*;

public class AppTest {
    @Test
    public void testAdd() {
        int i = 2;
        int j = 2;
        assertEquals(4, App.add(i, j));
    }
}
