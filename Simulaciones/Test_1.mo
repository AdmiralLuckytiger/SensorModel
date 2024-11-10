model Test_1
  MYS.AirBlock airBlock(pKv = 3)  annotation(
    Placement(transformation(origin = {-234, 24}, extent = {{-48, -48}, {48, 48}})));
  MYS.NutationBlock nutationBlock(initial_nutation = 0)  annotation(
    Placement(transformation(origin = {50, 24}, extent = {{-62, -62}, {62, 62}})));
  MYS.AirBlock airBlock3(pKv = 3) annotation(
    Placement(transformation(origin = {-238, 122}, extent = {{-48, -48}, {48, 48}})));
  MYS.SpringBlock springBlock(pKm = 3)  annotation(
    Placement(transformation(origin = {-13, -147}, extent = {{-47, -47}, {47, 47}})));
  MYS.DiscBlock discBlock(R = 0.1, M = 5, r = 0.02, g = 9.8)  annotation(
    Placement(transformation(origin = {-146, -108}, extent = {{-56, -56}, {56, 56}})));
  MYS.AirBlock airBlock1(pKv = 3) annotation(
    Placement(transformation(origin = {-296, -108}, extent = {{-48, -48}, {48, 48}})));
equation
  connect(airBlock.Kv, nutationBlock.I) annotation(
    Line(points = {{-200, 24}, {13, 24}}, color = {0, 0, 127}));
  connect(airBlock3.Kv, nutationBlock.H) annotation(
    Line(points = {{-204, 122}, {-96, 122}, {-96, 61}, {13, 61}}, color = {0, 0, 127}));
  connect(springBlock.Km, nutationBlock.wp) annotation(
    Line(points = {{20, -146}, {50, -146}, {50, -14}}, color = {0, 0, 127}));
  connect(discBlock.I, nutationBlock.Km) annotation(
    Line(points = {{-124, -68}, {-124, -14}, {12, -14}}, color = {0, 0, 127}));
  connect(discBlock.Wp, nutationBlock.Kv) annotation(
    Line(points = {{-168, -68}, {-168, 142}, {50, 142}, {50, 62}}, color = {0, 0, 127}));
  connect(airBlock1.Kv, discBlock.w) annotation(
    Line(points = {{-262, -108}, {-186, -108}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-300, 200}, {280, -140}})),
    version = "",
    uses);
end Test_1;