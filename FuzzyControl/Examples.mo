package Examples
  extends Icons.Package;

  model BalancedPendulumV1
    annotation (Coordsys(
        extent=[-229, -112; 225, 106],
        grid=[1, 1],
        component=[20, 20]), Window(
        x=0.05,
        y=0.04,
        width=0.61,
        height=0.75));
    Fuzzy_Control.Version_1.outputs.v1_output_cos_3 F(
      u1=-8,
      u2=0,
      u3=8) annotation (extent=[123, -22; 166, 18]);
    Fuzzy_Control.Version_1.outputs.v1_output_cos_3 phi_soll(
      u1=3.0415927,
      u2=3.1415927,
      u3=3.2415927) annotation (extent=[-60, -22; -17, 28]);
    Fuzzy_Control.Version_1.inputs.v1_input_3 Xd(
      emin=-1,
      emax=1,
      e1=-1,
      e2=0,
      e3=-1,
      e4=0,
      e5=0,
      e6=1,
      e7=0,
      e8=1,
      out_minus=1,
      out_plus=1) annotation (extent=[-173, -15; -132, 20]);
    Fuzzy_Control.Version_1.inputs.v1_input_3 der_x1(
      emin=-1,
      emax=1,
      e1=-1,
      e2=0,
      e3=-1,
      e4=0,
      e5=0,
      e6=1,
      e7=0,
      e8=1,
      out_minus=1,
      out_plus=1) annotation (extent=[-173, -53; -132, -18]);
    Fuzzy_Control.Version_1.inputs.v1_input_3 D_phi(
      emin=-0.1,
      emax=0.1,
      e1=-0.1,
      e2=0,
      e3=-0.1,
      e4=0,
      e5=0,
      e6=0.1,
      e7=0,
      e8=0.1,
      out_minus=1,
      out_plus=1) annotation (extent=[11, -9; 52, 26]);
    Fuzzy_Control.Version_1.inputs.v1_input_3 der_phi(
      emin=-0.8,
      emax=0.8,
      e1=-0.8,
      e2=0,
      e3=-0.8,
      e4=0,
      e5=0,
      e6=0.8,
      e7=0,
      e8=0.8,
      out_minus=1,
      out_plus=1) annotation (extent=[11, -46; 52, -10]);
    Fuzzy_Control.Version_1.inputs.v1_input_3 phi(
      emin=-3,
      emax=3,
      e1=-3,
      e2=-2,
      e3=-2.71,
      e4=-2.7,
      e5=2.7,
      e6=2.71,
      e7=2,
      e8=3) annotation (extent=[-174, 30; -132, 68]);
    Fuzzy_Control.Version_1.inputs.v1_input_3 x1(
      emin=-1,
      emax=1,
      e1=-1,
      e2=-0.2,
      e3=-0.2,
      e4=0,
      e5=0,
      e6=0.2,
      e7=0.2,
      e8=1,
      out_minus=1,
      out_plus=1) annotation (extent=[-174, 70; -132, 106]);
    Fuzzy_Control.Version_1.rules_v1.rule_3_1 R1 annotation (extent=[-72, 92; -
          48, 106]);
    Fuzzy_Control.Version_1.rules_v1.rule_3_1 R2 annotation (extent=[-72, 76; -
          48, 90]);
    Components.pendulum Pendulum(
      fall_down=true,
      MaterialW={0,0,1,0.5},
      MaterialT={0,0,0,0.5},
      MaterialS={1,1,1,1},
      MaterialSAx={1,1,1,1}) annotation (extent=[175, -27; 217, 17]);
    Fuzzy_Control.Version_1.rules_v1.rule_2_1 R3 annotation (extent=[-70, 60; -
          50, 74]);
    Fuzzy_Control.Version_1.rules_v1.rule_2_1 R4 annotation (extent=[-70, 44; -
          50, 58]);
    Fuzzy_Control.Version_1.rules_v1.rule_3_1 R5(FLA1="not") annotation (extent
        =[-102, 14; -75, 28]);
    Fuzzy_Control.Version_1.rules_v1.rule_3_1 R6(FLA1="not") annotation (extent
        =[-102, -2; -76, 12]);
    Fuzzy_Control.Version_1.rules_v1.rule_3_1 R7(FLA1="not") annotation (extent
        =[-102, -18; -76, -4]);
    Fuzzy_Control.Version_1.rules_v1.rule_3_1 R8(FLA1="not") annotation (extent
        =[-102, -33; -76, -19]);
    Fuzzy_Control.Version_1.rules_v1.rule_3_1 R9(FLA1="not") annotation (extent
        =[-102, -49; -76, -35]);
    Fuzzy_Control.Version_1.rules_v1.rule_3_1 R10(FLA1="not") annotation (
        extent=[-102, -64; -76, -50]);
    Fuzzy_Control.Version_1.rules_v1.rule_3_1 R11(FLA1="not") annotation (
        extent=[-102, -79; -76, -65]);
    Fuzzy_Control.Version_1.rules_v1.rule_3_1 R12(FLA1="not") annotation (
        extent=[-102, -94; -76, -80]);
    Fuzzy_Control.Version_1.rules_v1.rule_3_1 R13(FLA1="not") annotation (
        extent=[-102, -109; -76, -95]);
    Fuzzy_Control.Version_1.rules_v1.rule_3_1 R14(FLA1="not") annotation (
        extent=[80, 13; 107, 27]);
    Fuzzy_Control.Version_1.rules_v1.rule_3_1 R15(FLA1="not") annotation (
        extent=[80, -3; 107, 11]);
    Fuzzy_Control.Version_1.rules_v1.rule_3_1 R16(FLA1="not") annotation (
        extent=[80, -19; 107, -5]);
    Fuzzy_Control.Version_1.rules_v1.rule_3_1 R17(FLA1="not") annotation (
        extent=[80, -34; 107, -20]);
    Fuzzy_Control.Version_1.rules_v1.rule_3_1 R18(FLA1="not") annotation (
        extent=[80, -50; 107, -36]);
    Fuzzy_Control.Version_1.rules_v1.rule_3_1 R19(FLA1="not") annotation (
        extent=[80, -65; 107, -51]);
    Fuzzy_Control.Version_1.rules_v1.rule_3_1 R20(FLA1="not") annotation (
        extent=[80, -80; 107, -66]);
    Fuzzy_Control.Version_1.rules_v1.rule_3_1 R21(FLA1="not") annotation (
        extent=[80, -95; 107, -81]);
    Fuzzy_Control.Version_1.rules_v1.rule_3_1 R22(FLA1="not") annotation (
        extent=[80, -110; 107, -96]);
    Modelica.Blocks.Math.Feedback FeedbackSP(final n=1) annotation (extent=[-
          199, -7; -177, 14]);
    Modelica.Blocks.Math.Feedback FeedbackX1 annotation (extent=[-13, -5; 7, 15
          ]);
    Modelica.Blocks.Sources.Constant SetPoint(k={0}) annotation (extent=[-225,
          -7; -205, 13]);
  equation
    connect(phi.mittel, R1.InPort1) annotation (points=[-130, 48; -100, 48; -
          100, 103.278; -72, 103.278], style(color=45));
    connect(phi.mittel, R2.InPort1) annotation (points=[-130, 48; -100, 48; -
          100, 87.9; -72, 87.9], style(color=45));
    connect(x1.mittel, R1.InPort2) annotation (points=[-128, 88; -100, 88; -100
          , 98.6759; -72, 98.6759]);
    connect(x1.mittel, R2.InPort2) annotation (points=[-128, 88; -100, 88; -100
          , 82; -72, 82]);
    connect(R3.InPort1, phi.mittel) annotation (points=[-72, 70; -100, 70; -100
          , 48; -128, 48], style(color=45));
    connect(R4.InPort1, phi.mittel) annotation (points=[-72, 54; -100, 54; -100
          , 48; -128, 48], style(color=45));
    connect(R3.InPort2, x1.klein) annotation (points=[-72, 64; -100, 64; -100,
          100; -130, 100]);
    connect(x1.gross, R4.InPort2) annotation (points=[-130, 76; -100, 76; -100
          , 48; -72, 48]);
    connect(phi.mittel, R5.InPort1) annotation (points=[-130, 48; -116, 48; -
          116, 24.4722; -103, 24.4722], style(color=45));
    connect(phi.mittel, R6.InPort1) annotation (points=[-130, 48; -116, 48; -
          116, 9; -103, 9], style(color=45));
    connect(phi.mittel, R7.InPort1) annotation (points=[-131, 48; -116, 48; -
          116, -7; -103, -7], style(color=45));
    connect(phi.mittel, R8.InPort1) annotation (points=[-131, 48; -116, 48; -
          116, -22; -102, -22], style(color=45));
    connect(phi.mittel, R9.InPort1) annotation (points=[-131, 48; -116, 48; -
          116, -38; -103, -38], style(color=45));
    connect(phi.mittel, R10.InPort1) annotation (points=[-132, 48; -116, 48; -
          116, -53; -102, -53], style(color=45));
    connect(phi.mittel, R11.InPort1) annotation (points=[-132, 48; -116, 48; -
          116, -68; -102, -68], style(color=45));
    connect(phi.mittel, R12.InPort1) annotation (points=[-132, 48; -116, 48; -
          116, -83; -102, -83], style(color=45));
    connect(phi.mittel, R13.InPort1) annotation (points=[-132, 48; -116, 48; -
          116, -98; -103, -98], style(color=45));
    connect(phi.mittel, R14.InPort1) annotation (points=[-131, 48; -116, 48; -
          116, 33; 71, 33; 71, 24; 80, 24], style(color=45));
    connect(phi.mittel, R15.InPort1) annotation (points=[-131, 48; -116, 48; -
          116, 33; 71, 33; 71, 8; 80, 8], style(color=45));
    connect(phi.mittel, R16.InPort1) annotation (points=[-131, 48; -116, 48; -
          116, 33; 71, 33; 71, -8; 80, -8], style(color=45));
    connect(phi.mittel, R17.InPort1) annotation (points=[-131, 48; -116, 48; -
          116, 33; 71, 33; 71, -23; 80, -23], style(color=45));
    connect(phi.mittel, R18.InPort1) annotation (points=[-132, 48; -116, 48; -
          116, 33; 71, 33; 71, -39; 80, -39], style(color=45));
    connect(phi.mittel, R19.InPort1) annotation (points=[-132, 48; -116, 48; -
          116, 33; 71, 33; 71, -54; 81, -54], style(color=45));
    connect(phi.mittel, R20.InPort1) annotation (points=[-132, 48; -116, 48; -
          116, 33; 71, 33; 71, -69; 80, -69], style(color=45));
    connect(phi.mittel, R21.InPort1) annotation (points=[-132, 48; -116, 48; -
          116, 33; 71, 33; 71, -84; 80, -84], style(color=45));
    connect(phi.mittel, R22.InPort1) annotation (points=[-132, 48; -116, 48; -
          116, 33; 71, 33; 71, -99; 80, -99], style(color=45));
    connect(Xd.klein, R5.InPort2) annotation (points=[-130, 14; -120, 14; -120
          , 21; -103, 21]);
    connect(Xd.klein, R6.InPort2) annotation (points=[-130, 14; -120, 14; -120
          , 5; -103, 5]);
    connect(Xd.klein, R7.InPort2) annotation (points=[-129, 14; -120, 14; -120
          , -12; -103, -12]);
    connect(Xd.mittel, R8.InPort2) annotation (points=[-130, 2; -120, 2; -120,
          -26; -103, -26], style(color=57));
    connect(Xd.mittel, R9.InPort2) annotation (points=[-131, 2; -120, 2; -120,
          -43; -103, -43], style(color=57));
    connect(Xd.mittel, R10.InPort2) annotation (points=[-132, 2; -120, 2; -120
          , -58; -103, -58], style(color=57));
    connect(der_x1.klein, R5.InPort3) annotation (points=[-130, -24; -123, -24
          ; -123, 16; -103, 16], style(color=65));
    connect(R6.InPort3, der_x1.mittel) annotation (points=[-103, 0; -123, 0; -
          123, -36; -130, -36], style(color=77));
    connect(R7.InPort3, der_x1.gross) annotation (points=[-103, -16; -123, -16
          ; -123, -47; -130, -47], style(color=49));
    connect(R8.InPort3, der_x1.klein) annotation (points=[-103, -31; -123, -31
          ; -123, -24; -130, -24], style(color=65));
    connect(R9.InPort3, der_x1.mittel) annotation (points=[-103, -47; -123, -47
          ; -123, -36; -129, -36], style(color=77));
    connect(der_x1.gross, R10.InPort3) annotation (points=[-129, -47; -123, -47
          ; -123, -62; -103, -62], style(color=49));
    connect(der_x1.klein, R11.InPort3) annotation (points=[-130, -24; -123, -24
          ; -123, -77; -102, -77], style(color=65));
    connect(der_x1.mittel, R12.InPort3) annotation (points=[-130, -36; -123, -
          36; -123, -92; -103, -92], style(color=77));
    connect(der_x1.gross, R13.InPort3) annotation (points=[-130, -47; -123, -47
          ; -123, -108; -103, -108], style(color=49));
    connect(Xd.gross, R11.InPort2) annotation (points=[-130, -9; -120, -9; -120
          , -73; -103, -73], style(color=0));
    connect(Xd.gross, R12.InPort2) annotation (points=[-130, -9; -120, -9; -120
          , -88; -102, -88], style(color=0));
    connect(Xd.gross, R13.InPort2) annotation (points=[-130, -9; -120, -9; -120
          , -103; -103, -103], style(color=0));
    connect(D_phi.klein, R14.InPort2) annotation (points=[54, 20; 81, 20]);
    connect(D_phi.klein, R15.InPort2) annotation (points=[54, 20; 67, 20; 67, 3
          ; 80, 3]);
    connect(D_phi.klein, R16.InPort2) annotation (points=[54, 20; 67, 20; 67, -
          13; 81, -13]);
    connect(D_phi.mittel, R17.InPort2) annotation (points=[53, 8; 67, 8; 67, -
          28; 81, -28], style(color=57));
    connect(D_phi.mittel, R18.InPort2) annotation (points=[53, 8; 67, 8; 67, -
          44; 80, -44], style(color=57));
    connect(D_phi.mittel, R19.InPort2) annotation (points=[53, 8; 67, 8; 67, -
          59; 80, -59], style(color=57));
    connect(D_phi.gross, R20.InPort2) annotation (points=[53, -3; 67, -3; 67, -
          74; 81, -74], style(color=0));
    connect(D_phi.gross, R21.InPort2) annotation (points=[53, -3; 67, -3; 67, -
          89; 81, -89], style(color=0));
    connect(D_phi.gross, R22.InPort2) annotation (points=[53, -3; 67, -3; 67, -
          104; 80, -104], style(color=0));
    connect(der_phi.klein, R14.InPort3) annotation (points=[54, -16; 63, -16;
          63, 15; 80, 15], style(color=65));
    connect(der_phi.mittel, R15.InPort3) annotation (points=[54, -29; 63, -29;
          63, -1; 80, -1], style(color=77));
    connect(R16.InPort3, der_phi.gross) annotation (points=[81, -17; 63, -17;
          63, -40; 54, -40], style(color=49));
    connect(R17.InPort3, der_phi.klein) annotation (points=[80, -32; 63, -32;
          63, -16; 55, -16], style(color=65));
    connect(der_phi.mittel, R18.InPort3) annotation (points=[54, -29; 63, -29;
          63, -48; 81, -48], style(color=77));
    connect(der_phi.gross, R19.InPort3) annotation (points=[54, -40; 63, -40;
          63, -63; 80, -63], style(color=49));
    connect(der_phi.klein, R20.InPort3) annotation (points=[54, -16; 63, -16;
          63, -78; 80, -78], style(color=65));
    connect(der_phi.mittel, R21.InPort3) annotation (points=[54, -29; 63, -29;
          63, -93; 80, -93], style(color=77));
    connect(der_phi.gross, R22.InPort3) annotation (points=[54, -40; 63, -40;
          63, -108; 80, -108], style(color=49));
    connect(Pendulum.PHI, phi.InPort1) annotation (points=[218, 14; 225, 14;
          225, -112; -226, -112; -226, 49; -174, 49]);
    connect(der_phi.InPort1, Pendulum.der_PHI) annotation (points=[9, -27; -6,
          -27; -6, -112; 225, -112; 225, 3; 218, 3]);
    connect(Pendulum.X1, x1.InPort1) annotation (points=[218, -9; 225, -9; 225
          , -112; -229, -112; -229, 90; -174, 90]);
    connect(der_x1.InPort1, Pendulum.der_X1) annotation (points=[-174, -34; -
          202, -34; -202, -112; 225, -112; 225, -20; 218, -20]);
    connect(der_phi.klein, R1.InPort3) annotation (points=[54, -16; 63, -16; 63
          , 41; -100, 41; -100, 93; -72, 93], style(color=65));
    connect(der_phi.gross, R2.InPort3) annotation (points=[54, -40; 63, -40; 63
          , 41; -100, 41; -100, 78; -72, 78], style(color=49));
    connect(F.Out, Pendulum.F) annotation (points=[166, -4; 176, -4]);
    connect(R1.w, F.SMALL) annotation (points=[-48, 99; 116, 99; 116, 10; 122,
          10], style(color=65));
    connect(R4.w, F.SMALL) annotation (points=[-49, 51; 116, 51; 116, 10; 121,
          10], style(color=65));
    connect(R2.w, F.BIG) annotation (points=[-48, 83; 114, 83; 114, -16; 121, -
          16], style(color=49));
    connect(R3.w, F.BIG) annotation (points=[-49, 67; 114, 67; 114, -16; 121, -
          16], style(color=49));
    connect(R5.w, phi_soll.MEDIUM) annotation (points=[-75, 21; -70, 21; -70,
          2.0991; -62, 2.0991], style(color=77));
    connect(R6.w, phi_soll.SMALL) annotation (points=[-76, 5; -69, 5; -69, 18;
          -63, 17.8649], style(color=65));
    connect(phi_soll.SMALL, R7.w) annotation (points=[-63, 17.8649; -69, 18; -
          69, -12; -76, -12], style(color=65));
    connect(phi_soll.BIG, R8.w) annotation (points=[-62, -13.6667; -72, -14; -
          72, -26; -76, -26], style(color=49));
    connect(phi_soll.MEDIUM, R9.w) annotation (points=[-63, 2.0991; -69, 2.0991
          ; -69, -42; -76, -42], style(color=77));
    connect(phi_soll.SMALL, R10.w) annotation (points=[-62, 17.8649; -69,
          17.8649; -69, -58; -76, -58], style(color=65));
    connect(phi_soll.BIG, R11.w) annotation (points=[-63, -13.6667; -72, -14; -
          72, -72; -76, -72], style(color=49));
    connect(phi_soll.BIG, R12.w) annotation (points=[-62, -13.6667; -72, -14; -
          72, -87; -76, -87], style(color=49));
    connect(phi_soll.MEDIUM, R13.w) annotation (points=[-63, 2.0991; -69,
          2.0991; -69, -102; -76, -102], style(color=77));
    connect(R14.w, F.MEDIUM) annotation (points=[107, 20; 112, 20; 112, -3; 120
          , -3], style(color=77));
    connect(R15.w, F.BIG) annotation (points=[107, 4; 114, 4; 114, -16; 120, -
          16], style(color=49));
    connect(R16.w, F.BIG) annotation (points=[107, -12; 114, -12; 114, -16; 120
          , -16], style(color=49));
    connect(F.SMALL, R17.w) annotation (points=[122, 10; 116, 10; 116, -27; 107
          , -27], style(color=65));
    connect(F.MEDIUM, R18.w) annotation (points=[120, -3; 112, -3; 112, -43;
          107, -43], style(color=77));
    connect(F.BIG, R19.w) annotation (points=[121, -16; 114, -16; 114, -58; 107
          , -58], style(color=49));
    connect(F.SMALL, R20.w) annotation (points=[122, 10; 116, 10; 116, -74; 107
          , -74], style(color=65));
    connect(F.SMALL, R21.w) annotation (points=[122, 10; 116, 10; 116, -89; 107
          , -89], style(color=65));
    connect(F.MEDIUM, R22.w) annotation (points=[120, -3; 112, -3; 112, -103;
          107, -103], style(color=77));
    connect(FeedbackSP.outPort, Xd.InPort1) annotation (points=[-177, 3; -172,
          3]);
    connect(FeedbackX1.outPort, D_phi.InPort1) annotation (points=[6, 6; 11,
          9.34951]);
    connect(Pendulum.PHI, FeedbackX1.inPort2) annotation (points=[216, 14; 225
          , 14; 225, -112; -3, -112; -3, -4]);
    connect(phi_soll.Out, FeedbackX1.inPort1) annotation (points=[-18, 1; -11,
          5]);
    connect(Pendulum.X1, FeedbackSP.inPort2) annotation (points=[216, -9; 225,
          -9; 225, -112; -189, -112; -189, -6]);
    connect(SetPoint.outPort, FeedbackSP.inPort1) annotation (points=[-203, 3;
          -197, 3]);
  end BalancedPendulumV1;

  package Components
    annotation (
      Coordsys(
        extent=[-100, -100; 100, 100],
        grid=[2, 2],
        component=[20, 20]),
      Icon(
        Rectangle(extent=[-100, -100; 80, 50], style(fillPattern=0)),
        Polygon(points=[-100, 50; -80, 70; 100, 70; 80, 50; -100, 50], style(
              fillColor=8, fillPattern=1)),
        Polygon(points=[100, 70; 100, -80; 80, -100; 80, 50; 100, 70], style(
              fillColor=8, fillPattern=1)),
        Text(
          extent=[-80, -32; 65, -119],
          string="Library",
          style(color=3)),
        Text(extent=[-6, 116; -6, 64], string="%name")),
      Window(
        x=0.4,
        y=0.4,
        width=0.6,
        height=0.6));

    class pendulum

      parameter Real l=1 "length of pendulum in m";
      parameter Real d1=0 "damping constant of carriage in N/(m/s)";
      parameter Real m1=1 "mass of carriage in kg";
      parameter Real m2=1 "mass of pendulum load in kg (rod massless)";
      parameter Boolean fall_down=false;
      constant Real g=9.81;
      Boolean f_d "true if pendulum is falling";
      Real phi(start=0.1) "angle in rad (0 in lower balanced position)";
      Real der_phi(start=0) "angular velocity in rad/s";
      Real n "number of complete revolutions";
      Real x1(start=0) "horizontal position of carriage in m";
      Real y1(start=0) "vertical position of carriage in m";
      Real der_x1(start=0) "horizontal velocity of carriage in m/s";
      Real der_y1 "vertical speed of carriage in m/s";
      Real x2 "horizontal position of pendulum load in m";
      Real der_x2 "horizontal velocity of pendulum load in m/s";
      Real y2 "vertical position of pendulum load in m";
      Real der_y2 "vertical velocity of pendulum load in m/s";
      Real S "tractive force in rod in N";
      Real force "horizontal outer force on carriage in N (in direction of x1)"
        ;
      parameter Real Length=0.1 "Length of visual object (load)";
      parameter Real Width=0.1 "Width of visual object (load)";
      parameter Real Height=0.1 "Height of visual object (load)";
      parameter Real LengthS=l "Length of visual object (rod)";
      parameter Real WidthS=0.025 "Width of visual object (rod)";
      parameter Real HeightS=0.025 "Height of visual object (rod)";
      parameter Real LengthSAx=0.2 "Length of visual object (axis)";
      parameter Real WidthSAx=0.025 "Width of visual object (axis)";
      parameter Real HeightSAx=0.025 "Height of visual object (axis)";
      parameter Real LengthW=0.2 "Length of visual object (carriage)";
      parameter Real WidthW=0.075 "Width of visual object (carriage)";
      parameter Real HeightW=0.05 "Height of visual object (carriage)";
      parameter Real LengthT=3.2 "Length of visual object (rails)";
      parameter Real WidthT=0.04 "Width of visual object (rails)";
      parameter Real HeightT=0.05 "Height of visual object (rails)";
      parameter String Shape="cylinder" "Name of shape (load)";
      parameter String ShapeS="pipe" "shape of rod";
      parameter String ShapeSAx="pipe" "shape of axis";
      parameter String ShapeW="box" "shape of carriage components";
      parameter String ShapeT="box" "shape of rails";
      parameter Real Material[4]={1,0,0,0.5}
        "Color and specular coefficient (load)";
      parameter Real MaterialS[4]={1,1,1,0.5}
        "Color and specular coefficient (rod)";
      parameter Real MaterialSAx[4]={1,1,1,0.5}
        "Color and specular coefficient (axis)";
      parameter Real MaterialW[4]={0,0,0,0.5}
        "Color and specular coefficient (carriage)";
      parameter Real MaterialT[4]={1,1,1,0.5}
        "Color and specular coefficient (rails)";
      parameter Real Extra=0.0 "Additional parameter for cone and pipe (load)";
      parameter Real ExtraS=0.0 "Additional parameter for cone and pipe (rod)";
      parameter Real ExtraSAx=0.0
        "Additional parameter for cone and pipe (axis)";
      parameter Real ExtraW=0.0
        "Additional parameter for cone and pipe (carriage)";
      parameter Real ExtraT=0.0
        "Additional parameter for cone and pipe (rails)";
      Real Sshape[3, 3] "local 3 x 3 transformation matrix (load)";
      Real SshapeS[3, 3] "local 3 x 3 transformation matrix (rod)";
      Real SshapeSAx[3, 3] "local 3 x 3 transformation matrix (axis)";
      output Real Form;
      output Real rxvisobj[3];
      output Real ryvisobj[3];
      output Real rvisobj[3];
      output Real size[3];
      output Real material;
      output Real extra;
      Real shape;
      output Real FormS;
      output Real rxvisobjS[3];
      output Real ryvisobjS[3];
      output Real rvisobjS[3];
      output Real sizeS[3];
      output Real materialS;
      output Real extraS;
      Real shapeS;
      output Real FormSAx;
      output Real rxvisobjSAx[3];
      output Real ryvisobjSAx[3];
      output Real rvisobjSAx[3];
      output Real sizeSAx[3];
      output Real materialSAx;
      output Real extraSAx;
      Real shapeSAx;
      output Real FormW1;
      output Real rxvisobjW1[3];
      output Real ryvisobjW1[3];
      output Real rvisobjW1[3];
      output Real sizeW1[3];
      output Real materialW1;
      output Real extraW1;
      Real shapeW1;
      output Real FormW2;
      output Real rxvisobjW2[3];
      output Real ryvisobjW2[3];
      output Real rvisobjW2[3];
      output Real sizeW2[3];
      output Real materialW2;
      output Real extraW2;
      Real shapeW2;
      output Real FormW3;
      output Real rxvisobjW3[3];
      output Real ryvisobjW3[3];
      output Real rvisobjW3[3];
      output Real sizeW3[3];
      output Real materialW3;
      output Real extraW3;
      Real shapeW3;
      output Real FormW4;
      output Real rxvisobjW4[3];
      output Real ryvisobjW4[3];
      output Real rvisobjW4[3];
      output Real sizeW4[3];
      output Real materialW4;
      output Real extraW4;
      Real shapeW4;
      output Real FormT1;
      output Real rxvisobjT1[3];
      output Real ryvisobjT1[3];
      output Real rvisobjT1[3];
      output Real sizeT1[3];
      output Real materialT1;
      output Real extraT1;
      Real shapeT1;
      output Real FormT2;
      output Real rxvisobjT2[3];
      output Real ryvisobjT2[3];
      output Real rvisobjT2[3];
      output Real sizeT2[3];
      output Real materialT2;
      output Real extraT2;
      Real shapeT2;
      annotation (
        Coordsys(
          extent=[-106, -113; 106, 104],
          grid=[1, 1],
          component=[20, 20]),
        Icon(
          Rectangle(extent=[-94, 100; 94, -104]),
          Text(
            extent=[-88, 100; 34, 59],
            string="%name",
            style(color=0)),
          Text(extent=[57, 96; 88, 72], string="phi"),
          Text(extent=[26, 16; 89, 43], string="der_phi"),
          Text(extent=[63, -17; 89, -39], string="x1"),
          Line(points=[-60, -62; -39, 4], style(color=9, thickness=2)),
          Rectangle(extent=[-64, 10; -14, 0], style(color=0, fillColor=8)),
          Ellipse(extent=[-42, 9; -35, 2], style(color=0)),
          Text(extent=[33, -99; 88, -65], string="der_x1"),
          Polygon(points=[-74, -76; -68, -59; -52, -65; -58, -82; -73, -76; -74
                , -76], style(
              color=41,
              gradient=1,
              fillColor=42)),
          Line(points=[-81, 4; 14, 4], style(color=0, thickness=2)),
          Text(
            extent=[-41, -36; 64, -61],
            string="ANIMATION",
            style(color=45, fillColor=45))),
        Diagram(Text(extent=[-74, 36; 72, -24], string="Pendel")),
        Window(
          x=0.15,
          y=0,
          width=0.85,
          height=0.95));
      Modelica.Blocks.Interfaces.InPort F annotation (extent=[-116, -16; -96,
            18]);
      Modelica.Blocks.Interfaces.OutPort der_PHI annotation (extent=[94, 13;
            114, 45], layer="icon");
      Modelica.Blocks.Interfaces.OutPort PHI annotation (extent=[94, 69; 114,
            101]);
      Modelica.Blocks.Interfaces.OutPort X1 annotation (extent=[95, -43; 115, -
            11]);
      Modelica.Blocks.Interfaces.OutPort der_X1 annotation (extent=[94, -99;
            114, -67]);
    equation

      // Kinematics:
      x2 = x1 - l*sin(phi);
      y2 = y1 - l*cos(phi);

      // Dynamics:
      force = if f_d == false then F.signal[1] else 0;
      m1*der(der_x1) = force - S*sin(phi) - d1*der_x1;
      m1*der(der_y1) = if f_d == true then -m1*g - S*cos(phi) else 0;
      m2*der(der_x2) = S*sin(phi);
      m2*der(der_y2) = S*cos(phi) - m2*g;

      der_phi = der(phi);
      der_x1 = der(x1);
      der_y1 = der(y1);
      der_x2 = der(x2);
      der_y2 = der(y2);

      n = floor((phi + 2.7)/(2*3.1415927));
      PHI.signal[1] = phi - n*2*3.1415927;
      der_PHI.signal[1] = der_phi;
      X1.signal[1] = x1;
      der_X1.signal[1] = der_x1;

      // ANIMATION:

      // load:
      Sshape = [{cos(phi),-sin(phi),0}, {sin(phi),cos(phi),0}, {0,0,1}];
      shape = PackShape(Shape);

      /* Outputs to file. */
      Form = (987000 + shape)*1E20;
      rxvisobj = Sshape*{0,-1,0};
      ryvisobj = Sshape*{1,0,0};
      rvisobj = {x1 - l*sin(phi),y1 - l*cos(phi),0};
      size = {Length,Height,Width};

      material = PackMaterial(Material[1], Material[2], Material[3], Material[4
        ]);

      extra = Extra;

      // rod:
      SshapeS = [{cos(phi),-sin(phi),0}, {sin(phi),cos(phi),0}, {0,0,1}];
      shapeS = PackShape(ShapeS);
      /* Outputs to file. */
      FormS = (987000 + shapeS)*1E20;

      rxvisobjS = SshapeS*{0,-1,0};
      ryvisobjS = SshapeS*{1,0,0};
      rvisobjS = {x1,y1,0};
      sizeS = {LengthS,HeightS,WidthS};

      materialS = PackMaterial(MaterialS[1], MaterialS[2], MaterialS[3],
        MaterialS[4]);

      extraS = Extra;

      // axis:
      SshapeSAx = [{cos(phi),-sin(phi),0}, {sin(phi),cos(phi),0}, {0,0,1}];
      shapeSAx = PackShape(ShapeSAx);
      /* Outputs to file. */
      FormSAx = (987000 + shapeSAx)*1E20;

      rxvisobjSAx = SshapeSAx*{0,0,1};
      ryvisobjSAx = SshapeSAx*{1,0,0};
      rvisobjSAx = {x1,y1,-0.1};
      sizeSAx = {LengthSAx,HeightSAx,WidthSAx};

      materialSAx = PackMaterial(MaterialSAx[1], MaterialSAx[2], MaterialSAx[3]
        , MaterialSAx[4]);

      extraSAx = Extra;

      // carriage (four components):
      shapeW1 = PackShape(ShapeW);
      /* Outputs to file. */
      FormW1 = (987000 + shapeW1)*1E20;

      rxvisobjW1 = {1,0,0};
      ryvisobjW1 = {0,1,0};
      rvisobjW1 = {x1 - 0.1,y1 + 0.025,-0.1};
      sizeW1 = {LengthW,HeightW,WidthW};

      materialW1 = PackMaterial(MaterialW[1], MaterialW[2], MaterialW[3],
        MaterialW[4]);

      extraW1 = Extra;

      shapeW2 = PackShape(ShapeW);
      /* Outputs to file. */
      FormW2 = (987000 + shapeW2)*1E20;

      rxvisobjW2 = {1,0,0};
      ryvisobjW2 = {0,1,0};
      rvisobjW2 = {x1 - 0.1,y1 + 0.025,0.1};
      sizeW2 = {LengthW,HeightW,WidthW};

      materialW2 = PackMaterial(MaterialW[1], MaterialW[2], MaterialW[3],
        MaterialW[4]);

      extraW2 = Extra;

      shapeW3 = PackShape(ShapeW);
      /* Outputs to file. */
      FormW3 = (987000 + shapeW3)*1E20;

      rxvisobjW3 = {1,0,0};
      ryvisobjW3 = {0,1,0};
      rvisobjW3 = {x1 - 0.1,y1 - 0.025,0.1};
      sizeW3 = {LengthW,HeightW,WidthW};

      materialW3 = PackMaterial(MaterialW[1], MaterialW[2], MaterialW[3],
        MaterialW[4]);

      extraW3 = Extra;

      shapeW4 = PackShape(ShapeW);
      /* Outputs to file. */
      FormW4 = (987000 + shapeW4)*1E20;

      rxvisobjW4 = {1,0,0};
      ryvisobjW4 = {0,1,0};
      rvisobjW4 = {x1 - 0.1,y1 - 0.025,-0.1};
      sizeW4 = {LengthW,HeightW,WidthW};

      materialW4 = PackMaterial(MaterialW[1], MaterialW[2], MaterialW[3],
        MaterialW[4]);

      extraW4 = Extra;

      // rails:
      shapeT1 = PackShape(ShapeT);
      /* Outputs to file. */
      FormT1 = (987000 + shapeT1)*1E20;

      rxvisobjT1 = {1,0,0};
      ryvisobjT1 = {0,1,0};
      rvisobjT1 = {-LengthT/2,0,-0.12};
      sizeT1 = {LengthT,HeightT,WidthT};

      materialT1 = PackMaterial(MaterialT[1], MaterialT[2], MaterialT[3],
        MaterialT[4]);

      extraT1 = ExtraT;

      shapeT2 = PackShape(ShapeT);
      /* Outputs to file. */
      FormT2 = (987000 + shapeT2)*1E20;

      rxvisobjT2 = {1,0,0};
      ryvisobjT2 = {0,1,0};
      rvisobjT2 = {-LengthT/2,0,0.12};
      sizeT2 = {LengthT,HeightT,WidthT};

      materialT2 = PackMaterial(MaterialT[1], MaterialT[2], MaterialT[3],
        MaterialT[4]);

      extraT2 = ExtraT;

    algorithm
      if fall_down == true and abs(x1) > 0.1 + LengthT/2 then
        f_d := true;
      end if;

    end pendulum;

  end Components;

end Examples;
