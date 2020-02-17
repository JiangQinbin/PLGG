package dingcengjiekou;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public abstract interface kugai<E, PK extends Serializable>
{
  public abstract boolean inser(E paramE);
  
  public abstract boolean delete(PK paramPK);
  
  public abstract boolean update(PK paramPK, E paramE);
  
  public abstract ArrayList<E> seletAll();
  
  public abstract E select(PK paramPK);
  
  public abstract E select1(PK paramPK);
  
  public abstract List<E> select2();
}


/* Location:              F:\jiang\WEB-INF\classes\!\dingcengjiekou\kugai.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */