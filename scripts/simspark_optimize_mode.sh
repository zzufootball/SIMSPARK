#!/bin/bash
sed -i "s/\$agentSyncMode = false/\$agentSyncMode = true/" ~/.simspark/spark.rb

RB_FILE=/usr/local/share/rcssserver3d/rcssserver3d.rb
[ -f $RB_FILE ] || RB_FILE=/usr/share/rcssserver3d/rcssserver3d.rb
sudo sed -i "s/\$enableRealTimeMode = true/\$enableRealTimeMode = false/" $RB_FILE

RB_FILE=/usr/local/share/rcssserver3d/rsg/agent/nao/naoneckhead.rsg
[ -f $RB_FILE ] || RB_FILE=/usr/share/rcssserver3d/rsg/agent/nao/naoneckhead.rsg
sudo sed -i "s/setSenseMyPos false/setSenseMyPos true/" $RB_FILE
sudo sed -i "s/setSenseMyOrien false/setSenseMyOrien true/" $RB_FILE
sudo sed -i "s/setSenseBallPos false/setSenseBallPos true/" $RB_FILE

RB_FILE=/usr/local/share/rcssserver3d/naosoccersim.rb
[ -f $RB_FILE ] || RB_FILE=/usr/local/share/rcssserver3d/naosoccersim.rb
sudo sed -i "s/addSoccerVar('BeamNoiseXY',0.05)/addSoccerVar('BeamNoiseXY',0)/" $RB_FILE
sudo sed -i "s/addSoccerVar('BeamNoiseAngle',10.0)/addSoccerVar('BeamNoiseAngle',0)/" $RB_FILE
killall -9 rcssserver3d

echo "switch to optimize mode!"
