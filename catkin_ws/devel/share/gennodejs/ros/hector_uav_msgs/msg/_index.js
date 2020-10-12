
"use strict";

let Supply = require('./Supply.js');
let RawRC = require('./RawRC.js');
let Altimeter = require('./Altimeter.js');
let RawImu = require('./RawImu.js');
let HeightCommand = require('./HeightCommand.js');
let ThrustCommand = require('./ThrustCommand.js');
let ControllerState = require('./ControllerState.js');
let RC = require('./RC.js');
let VelocityZCommand = require('./VelocityZCommand.js');
let MotorStatus = require('./MotorStatus.js');
let RawMagnetic = require('./RawMagnetic.js');
let PositionXYCommand = require('./PositionXYCommand.js');
let ServoCommand = require('./ServoCommand.js');
let VelocityXYCommand = require('./VelocityXYCommand.js');
let RuddersCommand = require('./RuddersCommand.js');
let MotorPWM = require('./MotorPWM.js');
let MotorCommand = require('./MotorCommand.js');
let HeadingCommand = require('./HeadingCommand.js');
let Compass = require('./Compass.js');
let AttitudeCommand = require('./AttitudeCommand.js');
let YawrateCommand = require('./YawrateCommand.js');
let TakeoffFeedback = require('./TakeoffFeedback.js');
let PoseActionFeedback = require('./PoseActionFeedback.js');
let TakeoffResult = require('./TakeoffResult.js');
let PoseFeedback = require('./PoseFeedback.js');
let TakeoffAction = require('./TakeoffAction.js');
let PoseGoal = require('./PoseGoal.js');
let TakeoffActionResult = require('./TakeoffActionResult.js');
let PoseActionGoal = require('./PoseActionGoal.js');
let LandingFeedback = require('./LandingFeedback.js');
let LandingGoal = require('./LandingGoal.js');
let TakeoffActionFeedback = require('./TakeoffActionFeedback.js');
let TakeoffGoal = require('./TakeoffGoal.js');
let LandingResult = require('./LandingResult.js');
let PoseAction = require('./PoseAction.js');
let LandingAction = require('./LandingAction.js');
let LandingActionResult = require('./LandingActionResult.js');
let PoseActionResult = require('./PoseActionResult.js');
let TakeoffActionGoal = require('./TakeoffActionGoal.js');
let PoseResult = require('./PoseResult.js');
let LandingActionGoal = require('./LandingActionGoal.js');
let LandingActionFeedback = require('./LandingActionFeedback.js');

module.exports = {
  Supply: Supply,
  RawRC: RawRC,
  Altimeter: Altimeter,
  RawImu: RawImu,
  HeightCommand: HeightCommand,
  ThrustCommand: ThrustCommand,
  ControllerState: ControllerState,
  RC: RC,
  VelocityZCommand: VelocityZCommand,
  MotorStatus: MotorStatus,
  RawMagnetic: RawMagnetic,
  PositionXYCommand: PositionXYCommand,
  ServoCommand: ServoCommand,
  VelocityXYCommand: VelocityXYCommand,
  RuddersCommand: RuddersCommand,
  MotorPWM: MotorPWM,
  MotorCommand: MotorCommand,
  HeadingCommand: HeadingCommand,
  Compass: Compass,
  AttitudeCommand: AttitudeCommand,
  YawrateCommand: YawrateCommand,
  TakeoffFeedback: TakeoffFeedback,
  PoseActionFeedback: PoseActionFeedback,
  TakeoffResult: TakeoffResult,
  PoseFeedback: PoseFeedback,
  TakeoffAction: TakeoffAction,
  PoseGoal: PoseGoal,
  TakeoffActionResult: TakeoffActionResult,
  PoseActionGoal: PoseActionGoal,
  LandingFeedback: LandingFeedback,
  LandingGoal: LandingGoal,
  TakeoffActionFeedback: TakeoffActionFeedback,
  TakeoffGoal: TakeoffGoal,
  LandingResult: LandingResult,
  PoseAction: PoseAction,
  LandingAction: LandingAction,
  LandingActionResult: LandingActionResult,
  PoseActionResult: PoseActionResult,
  TakeoffActionGoal: TakeoffActionGoal,
  PoseResult: PoseResult,
  LandingActionGoal: LandingActionGoal,
  LandingActionFeedback: LandingActionFeedback,
};
