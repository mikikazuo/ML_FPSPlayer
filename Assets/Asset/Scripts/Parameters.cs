using System.Collections;
using System.Collections.Generic;

public class Parameters {
    int hp;
    int maxhp;  

    public int HP {
        get { return hp; }
        set { hp = value; }
    }

   public Parameters(int maxhp)
    {
        this.hp = this.maxhp = maxhp;
    }
}
