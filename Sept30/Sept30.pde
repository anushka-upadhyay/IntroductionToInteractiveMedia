Table table; 

void setup() {
  size (500, 500);
  //table = loadTable("/Users/macbookair/Desktop/csv_1.csv", "header"); (this was from testing with another csv file)

  table = loadTable("/Users/macbookair/Desktop/Depression.csv", "header");
  println(table.getRowCount() + " total rows in table");
  println(table.getColumnCount() + " total coloumns in table");
}

void draw() {

  frameRate(5);
  for (int i=0; i<455; i= i +1) {

    //Float CircSize = table.getFloat(row, "value"); (this was from testing with another csv file)
    Float CircSize = table.getFloat(i, "small_area_estimate");
    //println(table.getFloat(row, "small_area_estimate") + " values in this coloumn");
    fill(random(255), random(255), random(255));
    circle (random(500), random(500), CircSize*1000); //*1000 to increase the size of the circles because the actual data is in small decimals
  }
}

//old code
//
//String strings[];

//void setup () {
//  size(500,500);
//  strings = loadStrings("/Users/macbookair/Desktop/Depression.csv");
//  // strings = loadStrings("Users/macbookair/Desktop/samhsa-major-depressive-episode/data/2012_2014_substate_sae_table_27.csv");

//  if (strings==null) {
//    println("failed to load file");
//    while (true) { 
//      ;
//    }
//  }
//  println("strings loaded from file successfully, read "+strings.length+" lines");
//}
