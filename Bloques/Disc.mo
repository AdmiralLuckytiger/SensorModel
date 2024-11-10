block Disc
  Modelica.Blocks.Interfaces.RealOutput I annotation(
    Placement(transformation(origin = {0, -54}, extent = {{-26, -26}, {26, 26}}, rotation = 90), iconTransformation(origin = {40, 70}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealOutput Wp annotation(
    Placement(transformation(origin = {0, 54}, extent = {{-26, -26}, {26, 26}}, rotation = -90), iconTransformation(origin = {-40, 70}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealInput w annotation(
    Placement(transformation(origin = {-80, 0}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-70, 0}, extent = {{-10, -10}, {10, 10}})));  
  
  parameter Real R;
  parameter Real M;
  parameter Real r;
  parameter Real g;  
    
  equation
    I = 0.5*M*R*R;
    Wp = r*M*g/(I*w);
    
annotation(
    Diagram(graphics = {Rectangle(fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-80, 80}, {80, -80}}), Ellipse(origin = {0, -12}, fillColor = {245, 194, 17}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-60, -20}, {60, 20}}), Ellipse(origin = {0, 8}, fillColor = {245, 194, 17}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-60, -20}, {60, 20}}), Rectangle(origin = {0, -2}, fillColor = {245, 194, 17}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-60, 10}, {60, -10}})}),
    uses(Modelica(version = "4.0.0")),
    Icon(graphics = {Rectangle(fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-80, 80}, {80, -80}}), Ellipse(origin = {0, -12}, fillColor = {245, 194, 17}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-60, -20}, {60, 20}}), Ellipse(origin = {0, 8}, fillColor = {245, 194, 17}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-60, -20}, {60, 20}}), Rectangle(origin = {0, -2}, fillColor = {245, 194, 17}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-60, 10}, {60, -10}}), Text(origin = {-91, -27}, extent = {{9, -13}, {-9, 13}}, textString = "W"), Text(origin = {-60, 90}, extent = {{10, -10}, {-10, 10}}, textString = "Wp"), Text(origin = {64, 90}, extent = {{10, -10}, {-10, 10}}, textString = "I")}));
end Disc;