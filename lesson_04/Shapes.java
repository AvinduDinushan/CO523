enum Colour{
	RED,GREEN,BLUE,YELLOW,BLACK,WHITE;
}

enum Style{
	DOTTED,DASHED,CONTINOUS;
}

interface Shape{
	Colour colour;
	Style style;
	void resize();
}

Class Point implements Shape{
	double x,y;

}

Class Line implements Shape{
	Point start,end;
}

Class Polygon implements Shape{
	Point vertices;
} 

Class Ellipse{
	Point center;
	double radius;
}