/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void StartButtonClick(GButton source, GEvent event) { //_CODE_:Start_Button:622067:
  MatchBox_variables.setVisible(true);
} //_CODE_:Start_Button:622067:

public void HelpButtonClick(GButton source, GEvent event) { //_CODE_:Help_Button:677148:
  println("Help_Button - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:Help_Button:677148:

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:MatchBox_variables:938871:
  appc.background(230);
  appc.fill(255, 0, 0);
  appc.textAlign(CENTER, CENTER);
  appc.text(mainErrorMsg, appc.width/2, 440);
} //_CODE_:MatchBox_variables:938871:

public void Name1_Change(GTextField source, GEvent event) { //_CODE_:Name1:726213:
  println("textfield1 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:Name1:726213:

public void Name2_Change(GTextField source, GEvent event) { //_CODE_:Name2:873715:
  println("textfield2 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:Name2:873715:

public void AgeSliderChange(GCustomSlider source, GEvent event) { //_CODE_:Age1:900375:
  println("custom_slider1 - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:Age1:900375:

public void custom_slider2_change1(GCustomSlider source, GEvent event) { //_CODE_:Age2:887534:
  println("custom_slider2 - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:Age2:887534:

public void HeightSliderChange(GCustomSlider source, GEvent event) { //_CODE_:Height1:390154:
  println("custom_slider3 - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:Height1:390154:

public void Height2SliderChange(GCustomSlider source, GEvent event) { //_CODE_:Height2:855726:
  println("custom_slider4 - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:Height2:855726:

public void WeightSliderChange(GCustomSlider source, GEvent event) { //_CODE_:Weight1:803483:
  println("custom_slider5 - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:Weight1:803483:

public void Confirm_Click(GButton source, GEvent event) { //_CODE_:Confirm:834868:
  if (catchErrors()) {
    getValues();
    identifyProblems();
    MatchBox_variables.setVisible(false);
  }
} //_CODE_:Confirm:834868:

public void Weight2SliderChange(GCustomSlider source, GEvent event) { //_CODE_:Weight2:986884:
  println("Weight2 - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:Weight2:986884:

public void Zodiac_menuOpen(GButton source, GEvent event) { //_CODE_:Zodiac_Signs1:228585:
  currentZodiacEditor = 1;
  zodiacErrorMsg = "";
  Zodiac_Signs.setVisible(true);
} //_CODE_:Zodiac_Signs1:228585:

public void Zodiac_menuOpen2(GButton source, GEvent event) {
  currentZodiacEditor = 2;
  zodiacErrorMsg = "";
  Zodiac_Signs.setVisible(true);
}

public void IntrestsText_Change(GTextArea source, GEvent event) { //_CODE_:Intrests_Text1:268628:
  println("Intrests_Text1 - GTextArea >> GEvent." + event + " @ " + millis());
} //_CODE_:Intrests_Text1:268628:

public void IntrestsText2_Change(GTextArea source, GEvent event) { //_CODE_:Intrests_Text2:787686:
  println("Intrests_Text2 - GTextArea >> GEvent." + event + " @ " + millis());
} //_CODE_:Intrests_Text2:787686:

synchronized public void win_draw2(PApplet appc, GWinData data) { //_CODE_:Zodiac_Signs:688374:
  appc.background(230);
  appc.fill(255, 0, 0);
  appc.textAlign(CENTER, CENTER);
  appc.text(zodiacErrorMsg, appc.width/2, 210);
} //_CODE_:Zodiac_Signs:688374:

public void Pisces_Check(GCheckbox source, GEvent event) { //_CODE_:Pisces:306420:
  println("checkbox1 - GCheckbox >> GEvent." + event + " @ " + millis());
} //_CODE_:Pisces:306420:

public void Aquarius_Check(GCheckbox source, GEvent event) { //_CODE_:Aquarius:365681:
  println("checkbox2 - GCheckbox >> GEvent." + event + " @ " + millis());
} //_CODE_:Aquarius:365681:

public void Capriocorn_Check(GCheckbox source, GEvent event) { //_CODE_:Capricorn:628775:
  println("checkbox3 - GCheckbox >> GEvent." + event + " @ " + millis());
} //_CODE_:Capricorn:628775:

public void Sagittarius_Check(GCheckbox source, GEvent event) { //_CODE_:Sagittarius:967765:
  println("checkbox4 - GCheckbox >> GEvent." + event + " @ " + millis());
} //_CODE_:Sagittarius:967765:

public void Scorpio_Check(GCheckbox source, GEvent event) { //_CODE_:Scorpio:600549:
  println("checkbox5 - GCheckbox >> GEvent." + event + " @ " + millis());
} //_CODE_:Scorpio:600549:

public void Libra_Check(GCheckbox source, GEvent event) { //_CODE_:Libra:921158:
  println("checkbox6 - GCheckbox >> GEvent." + event + " @ " + millis());
} //_CODE_:Libra:921158:

public void Virgo_Check(GCheckbox source, GEvent event) { //_CODE_:Virgo:925655:
  println("checkbox7 - GCheckbox >> GEvent." + event + " @ " + millis());
} //_CODE_:Virgo:925655:

public void Leo_Check(GCheckbox source, GEvent event) { //_CODE_:Leo:471669:
  println("checkbox8 - GCheckbox >> GEvent." + event + " @ " + millis());
} //_CODE_:Leo:471669:

public void Cancer_Check(GCheckbox source, GEvent event) { //_CODE_:Cancer:232720:
  println("checkbox9 - GCheckbox >> GEvent." + event + " @ " + millis());
} //_CODE_:Cancer:232720:

public void Gemini_Check(GCheckbox source, GEvent event) { //_CODE_:Gemini:258252:
  println("checkbox10 - GCheckbox >> GEvent." + event + " @ " + millis());
} //_CODE_:Gemini:258252:

public void Taurus_Check(GCheckbox source, GEvent event) { //_CODE_:Taurus:867994:
  println("checkbox11 - GCheckbox >> GEvent." + event + " @ " + millis());
} //_CODE_:Taurus:867994:

public void Aries_Check(GCheckbox source, GEvent event) { //_CODE_:Aries:505733:
  println("checkbox12 - GCheckbox >> GEvent." + event + " @ " + millis());
} //_CODE_:Aries:505733:

public void ConfirmZodiac_Click(GButton source, GEvent event) { //_CODE_:ConfirmZodiac:858276:
  int count = countSelectedZodiacs();
  if (count != 1) {
    zodiacErrorMsg = "Please select exactly one zodiac sign.";
    return;
  }
  
  zodiacErrorMsg = "";
  String selected = getSelectedZodiac();
  if (currentZodiacEditor == 1) {
    p1ZodiacSelection = selected;
    println("Person 1 Zodiac set to: " + selected);
  } else if (currentZodiacEditor == 2) {
    p2ZodiacSelection = selected;
    println("Person 2 Zodiac set to: " + selected);
  }
  Zodiac_Signs.setVisible(false);
  
  // Clear checkboxes for next time (optional, but good UX)
  clearZodiacSelection();
} //_CODE_:ConfirmZodiac:858276:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  Start_Button = new GButton(this, 207, 140, 80, 30);
  Start_Button.setText("Start");
  Start_Button.addEventHandler(this, "StartButtonClick");
  MatchBox_Title = new GLabel(this, 160, 43, 174, 68);
  MatchBox_Title.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  MatchBox_Title.setText("MatchBox");
  MatchBox_Title.setOpaque(false);
  Help_Button = new GButton(this, 206, 197, 80, 30);
  Help_Button.setText("Help");
  Help_Button.addEventHandler(this, "HelpButtonClick");
  MatchBox_variables = GWindow.getWindow(this, "Window title", 0, 0, 600, 500, JAVA2D);
  MatchBox_variables.noLoop();
  MatchBox_variables.setActionOnClose(G4P.KEEP_OPEN);
  MatchBox_variables.addDrawHandler(this, "win_draw1");
  MatchBox_variables.setVisible(false);
  Name1 = new GTextField(MatchBox_variables, 90, 12, 120, 30, G4P.SCROLLBARS_NONE);
  Name1.setOpaque(true);
  Name1.addEventHandler(this, "Name1_Change");
  Name2 = new GTextField(MatchBox_variables, 390, 9, 120, 30, G4P.SCROLLBARS_NONE);
  Name2.setOpaque(true);
  Name2.addEventHandler(this, "Name2_Change");
  Age1 = new GCustomSlider(MatchBox_variables, 52, 62, 196, 50, "grey_blue");
  Age1.setShowValue(true);
  Age1.setShowLimits(true);
  Age1.setLimits(1, 0, 100);
  Age1.setShowTicks(true);
  Age1.setNumberFormat(G4P.INTEGER, 0);
  Age1.setLocalColorScheme(GCScheme.RED_SCHEME);
  Age1.setOpaque(false);
  Age1.addEventHandler(this, "AgeSliderChange");
  Age2 = new GCustomSlider(MatchBox_variables, 352, 63, 195, 50, "grey_blue");
  Age2.setShowValue(true);
  Age2.setShowLimits(true);
  Age2.setLimits(1, 0, 100);
  Age2.setShowTicks(true);
  Age2.setNumberFormat(G4P.INTEGER, 0);
  Age2.setLocalColorScheme(GCScheme.RED_SCHEME);
  Age2.setOpaque(false);
  Age2.addEventHandler(this, "custom_slider2_change1");
  Height1 = new GCustomSlider(MatchBox_variables, 54, 135, 192, 50, "grey_blue");
  Height1.setShowValue(true);
  Height1.setShowLimits(true);
  Height1.setLimits(50.0, 50.0, 300.0);
  Height1.setShowTicks(true);
  Height1.setNumberFormat(G4P.DECIMAL, 2);
  Height1.setLocalColorScheme(GCScheme.RED_SCHEME);
  Height1.setOpaque(false);
  Height1.addEventHandler(this, "HeightSliderChange");
  Height2 = new GCustomSlider(MatchBox_variables, 350, 136, 199, 50, "grey_blue");
  Height2.setShowValue(true);
  Height2.setShowLimits(true);
  Height2.setLimits(50.0, 50.0, 300.0);
  Height2.setShowTicks(true);
  Height2.setNumberFormat(G4P.DECIMAL, 2);
  Height2.setLocalColorScheme(GCScheme.RED_SCHEME);
  Height2.setOpaque(false);
  Height2.addEventHandler(this, "Height2SliderChange");
  Weight1 = new GCustomSlider(MatchBox_variables, 53, 211, 194, 50, "grey_blue");
  Weight1.setShowValue(true);
  Weight1.setShowLimits(true);
  Weight1.setLimits(0.5, 0.0, 800.0);
  Weight1.setShowTicks(true);
  Weight1.setNumberFormat(G4P.DECIMAL, 2);
  Weight1.setLocalColorScheme(GCScheme.RED_SCHEME);
  Weight1.setOpaque(false);
  Weight1.addEventHandler(this, "WeightSliderChange");
  Confirm = new GButton(MatchBox_variables, 260, 454, 80, 30);
  Confirm.setText("Confirm");
  Confirm.addEventHandler(this, "Confirm_Click");
  Weight2 = new GCustomSlider(MatchBox_variables, 353, 210, 194, 50, "grey_blue");
  Weight2.setShowValue(true);
  Weight2.setShowLimits(true);
  Weight2.setLimits(0.5, 0.0, 800.0);
  Weight2.setShowTicks(true);
  Weight2.setNumberFormat(G4P.DECIMAL, 2);
  Weight2.setLocalColorScheme(GCScheme.RED_SCHEME);
  Weight2.setOpaque(false);
  Weight2.addEventHandler(this, "Weight2SliderChange");
  WeightLabel1 = new GLabel(MatchBox_variables, 110, 190, 80, 20);
  WeightLabel1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  WeightLabel1.setText("Weight");
  WeightLabel1.setOpaque(false);
  WeightLabel2 = new GLabel(MatchBox_variables, 410, 194, 80, 20);
  WeightLabel2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  WeightLabel2.setText("Weight");
  WeightLabel2.setOpaque(false);
  HeightLabel1 = new GLabel(MatchBox_variables, 110, 117, 80, 20);
  HeightLabel1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  HeightLabel1.setText("Height");
  HeightLabel1.setOpaque(false);
  HeightLabel2 = new GLabel(MatchBox_variables, 410, 118, 80, 20);
  HeightLabel2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  HeightLabel2.setText("Height");
  HeightLabel2.setOpaque(false);
  AgeLabel1 = new GLabel(MatchBox_variables, 110, 46, 80, 20);
  AgeLabel1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  AgeLabel1.setText("Age");
  AgeLabel1.setOpaque(false);
  AgeLabel2 = new GLabel(MatchBox_variables, 410, 46, 80, 20);
  AgeLabel2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  AgeLabel2.setText("Age");
  AgeLabel2.setOpaque(false);
  Zodiac_Signs1 = new GButton(MatchBox_variables, 100, 399, 101, 30);
  Zodiac_Signs1.setText("Zodiac Sign");
  Zodiac_Signs1.addEventHandler(this, "Zodiac_menuOpen");
  Zodiac_Signs2 = new GButton(MatchBox_variables, 400, 399, 101, 30);
  Zodiac_Signs2.setText("Zodiac Sign");
  Zodiac_Signs2.addEventHandler(this, "Zodiac_menuOpen2");
  Intrests_Text1 = new GTextArea(MatchBox_variables, 66, 299, 167, 86, G4P.SCROLLBARS_NONE);
  Intrests_Text1.setOpaque(true);
  Intrests_Text1.addEventHandler(this, "IntrestsText_Change");
  Intrests1 = new GLabel(MatchBox_variables, 110, 276, 80, 20);
  Intrests1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Intrests1.setText("Interests");
  Intrests1.setOpaque(false);
  Intrests_Text2 = new GTextArea(MatchBox_variables, 364, 296, 171, 80, G4P.SCROLLBARS_NONE);
  Intrests_Text2.setOpaque(true);
  Intrests_Text2.addEventHandler(this, "IntrestsText2_Change");
  Intrests2 = new GLabel(MatchBox_variables, 410, 276, 80, 20);
  Intrests2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Intrests2.setText("Interests");
  Intrests2.setOpaque(false);
  Zodiac_Signs = GWindow.getWindow(this, "Window title", 0, 0, 300, 225, JAVA2D);
  Zodiac_Signs.noLoop();
  Zodiac_Signs.setActionOnClose(G4P.KEEP_OPEN);
  Zodiac_Signs.addDrawHandler(this, "win_draw2");
  Zodiac_Signs.setVisible(false);
  Pisces = new GCheckbox(Zodiac_Signs, 160, 132, 120, 20);
  Pisces.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  Pisces.setText("Pisces");
  Pisces.setOpaque(false);
  Pisces.addEventHandler(this, "Pisces_Check");
  Aquarius = new GCheckbox(Zodiac_Signs, 160, 110, 120, 20);
  Aquarius.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  Aquarius.setText("Aquarius");
  Aquarius.setOpaque(false);
  Aquarius.addEventHandler(this, "Aquarius_Check");
  Capricorn = new GCheckbox(Zodiac_Signs, 160, 89, 120, 19);
  Capricorn.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  Capricorn.setText("Capriocorn");
  Capricorn.setOpaque(false);
  Capricorn.addEventHandler(this, "Capriocorn_Check");
  Sagittarius = new GCheckbox(Zodiac_Signs, 160, 63, 120, 20);
  Sagittarius.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  Sagittarius.setText("Sagittarius");
  Sagittarius.setOpaque(false);
  Sagittarius.addEventHandler(this, "Sagittarius_Check");
  Scorpio = new GCheckbox(Zodiac_Signs, 160, 41, 120, 20);
  Scorpio.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  Scorpio.setText("Scorpio");
  Scorpio.setOpaque(false);
  Scorpio.addEventHandler(this, "Scorpio_Check");
  Libra = new GCheckbox(Zodiac_Signs, 160, 19, 120, 19);
  Libra.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  Libra.setText("Libra");
  Libra.setOpaque(false);
  Libra.addEventHandler(this, "Libra_Check");
  Virgo = new GCheckbox(Zodiac_Signs, 20, 133, 120, 20);
  Virgo.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  Virgo.setText("Virgo");
  Virgo.setOpaque(false);
  Virgo.addEventHandler(this, "Virgo_Check");
  Leo = new GCheckbox(Zodiac_Signs, 20, 110, 120, 20);
  Leo.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  Leo.setText("Leo");
  Leo.setOpaque(false);
  Leo.addEventHandler(this, "Leo_Check");
  Cancer = new GCheckbox(Zodiac_Signs, 20, 87, 119, 20);
  Cancer.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  Cancer.setText("Cancer");
  Cancer.setOpaque(false);
  Cancer.addEventHandler(this, "Cancer_Check");
  Gemini = new GCheckbox(Zodiac_Signs, 20, 63, 120, 20);
  Gemini.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  Gemini.setText("Gemini");
  Gemini.setOpaque(false);
  Gemini.addEventHandler(this, "Gemini_Check");
  Taurus = new GCheckbox(Zodiac_Signs, 20, 39, 120, 20);
  Taurus.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  Taurus.setText("Taurus");
  Taurus.setOpaque(false);
  Taurus.addEventHandler(this, "Taurus_Check");
  Aries = new GCheckbox(Zodiac_Signs, 20, 17, 120, 20);
  Aries.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  Aries.setText("Aries");
  Aries.setOpaque(false);
  Aries.addEventHandler(this, "Aries_Check");
  ConfirmZodiac = new GButton(Zodiac_Signs, 110, 170, 80, 30);
  ConfirmZodiac.setText("Confirm");
  ConfirmZodiac.addEventHandler(this, "ConfirmZodiac_Click");
  MatchBox_variables.loop();
  Zodiac_Signs.loop();
}

// Variable declarations 
// autogenerated do not edit
GButton Start_Button; 
GLabel MatchBox_Title; 
GButton Help_Button; 
GWindow MatchBox_variables;
GTextField Name1; 
GTextField Name2; 
GCustomSlider Age1; 
GCustomSlider Age2; 
GCustomSlider Height1; 
GCustomSlider Height2; 
GCustomSlider Weight1; 
GButton Confirm; 
GCustomSlider Weight2; 
GLabel WeightLabel1; 
GLabel WeightLabel2; 
GLabel HeightLabel1; 
GLabel HeightLabel2; 
GLabel AgeLabel1; 
GLabel AgeLabel2; 
GButton Zodiac_Signs1; 
GButton Zodiac_Signs2;
GTextArea Intrests_Text1; 
GLabel Intrests1; 
GTextArea Intrests_Text2; 
GLabel Intrests2;
GWindow Zodiac_Signs;
GCheckbox Pisces; 
GCheckbox Aquarius; 
GCheckbox Capricorn; 
GCheckbox Sagittarius; 
GCheckbox Scorpio; 
GCheckbox Libra; 
GCheckbox Virgo; 
GCheckbox Leo; 
GCheckbox Cancer; 
GCheckbox Gemini; 
GCheckbox Taurus; 
GCheckbox Aries; 
GButton ConfirmZodiac; 
