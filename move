
public class move {
	private int oldx;
	private int oldy;
	private int newx;
	private int newy;
	private piece p;
	
	
	public move (int oldx, int oldy, int newx, int newy, piece pie){
		this.oldx = oldx;
		this.oldy = oldy;
		this.newx = newx;
		this.newy = newy;
		
		if (pie.checkteam() == true){
			if (pie.getType() == "K"){
				p = new king(pie.getX(),pie.getY());
			}
			else if (pie.getType() == "G"){
				p = new guard(pie.getX(),pie.getY());
			}
		}
		else if (pie.checkteam() == false){
			p = new dragon(pie.getX(),pie.getY());
		}
	}
	
	public int getOldX(){
		return oldx;
	}
	
	public int getOldY(){
		return oldy;
	}
	
	public int getNewX(){
		return newx;
	}
	
	public int getNewY(){
		return newy;
	}
	
	public piece getPiece(){
		return p;
	}
}
