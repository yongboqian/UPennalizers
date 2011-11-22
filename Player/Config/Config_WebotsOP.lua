module(..., package.seeall);
require 'vector'

function loadconfig(configName)
  local localConfig=require(configName);
  for k,v in pairs(localConfig) do
    Config[k]=localConfig[k];
  end
end

-- Load configuration
loadconfig('Config_OP')
loadconfig('Config_WebotsOP_Camera')

-- Change the platform
platform.name = 'WebotsOP'

-- Device Interface Libraries
dev.body = 'DarwinOPWebotsBody';
dev.camera = 'DarwinOPWebotsCam';

-- Webots Custom Head Parameters
head.cameraPos = {{0.05, 0.0, 0.05}}; 
head.cameraAngle = {{0.0, 0.0, 0.0}};

-- Walk Parameters
walk.tSensorDelay = 0.10;

