/* //<>//

Final Project for CG-314
Iz Haskel
Kinect's shape recognition 


Press mouse in order to see the line silhouette with the point of origen z=0 instead of the point formation
*/




import org.openkinect.processing.*;

// Kinect Library object
Kinect kinect;

// Angle for rotation
float a = 0;







void setup() {
  size(1000, 1000, P3D);
  kinect = new Kinect(this);
  kinect.initDepth();
  kinect.activateDevice(0);
}


void draw() {
  background(0);

 
  fill (25,46,76);
  pushMatrix();
  translate(0, 0, -1000);



  int skip = 5;

  
  int[] depth = kinect.getRawDepth();



  if ( mousePressed ==true) {

    stroke(25,46,76);
    strokeWeight(1);
    beginShape(LINES);
  } else {
    //stroke(25,46,76);
    stroke(255,246,18);
    strokeWeight(1);
    beginShape(POINTS);
  }
// value of stroke also influences resolution 


//for a better resolution just need more pixels being read ++ or +=to skip


  for (int x = 0; x < kinect.width; x+=skip) {
    for (int y = 0; y < kinect.height; y+=skip) {
      int offset = x + y * kinect.width;
      int d = depth[offset];
      //depth information
      PVector point = depthToPointCloudPos(x, y, d);

      // Draw a point
      vertex(point.x, point.y, point.z);
    }
  }
  endShape();

  popMatrix();
}



//calculte the xyz camera position based on the depth data
PVector depthToPointCloudPos(int x, int y, float depthValue) {
  PVector point = new PVector();
  point.z = (depthValue);// / (1.0f); // Convert from mm to meters
  point.x = (x - CameraParams.cx) * point.z / CameraParams.fx;
  point.y = (y - CameraParams.cy) * point.z / CameraParams.fy;
  return point;
}