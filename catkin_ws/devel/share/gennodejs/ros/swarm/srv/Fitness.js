// Auto-generated. Do not edit!

// (in-package swarm.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Quad = require('../msg/Quad.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class FitnessRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.quad = null;
    }
    else {
      if (initObj.hasOwnProperty('quad')) {
        this.quad = initObj.quad
      }
      else {
        this.quad = new Quad();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FitnessRequest
    // Serialize message field [quad]
    bufferOffset = Quad.serialize(obj.quad, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FitnessRequest
    let len;
    let data = new FitnessRequest(null);
    // Deserialize message field [quad]
    data.quad = Quad.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'swarm/FitnessRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1d46d2cbba91b7708f2bc8ae991cdf27';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    swarm/Quad quad
    
    ================================================================================
    MSG: swarm/Quad
    float64 x
    float64 y
    float64 z
    float64 yaw
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FitnessRequest(null);
    if (msg.quad !== undefined) {
      resolved.quad = Quad.Resolve(msg.quad)
    }
    else {
      resolved.quad = new Quad()
    }

    return resolved;
    }
};

class FitnessResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fitness = null;
    }
    else {
      if (initObj.hasOwnProperty('fitness')) {
        this.fitness = initObj.fitness
      }
      else {
        this.fitness = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FitnessResponse
    // Serialize message field [fitness]
    bufferOffset = _serializer.int64(obj.fitness, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FitnessResponse
    let len;
    let data = new FitnessResponse(null);
    // Deserialize message field [fitness]
    data.fitness = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'swarm/FitnessResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '82ffe70118baf68b65c33399fb9e02cb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 fitness
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FitnessResponse(null);
    if (msg.fitness !== undefined) {
      resolved.fitness = msg.fitness;
    }
    else {
      resolved.fitness = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: FitnessRequest,
  Response: FitnessResponse,
  md5sum() { return 'fe78a2c0310f3b53936a4c9d63f9c31b'; },
  datatype() { return 'swarm/Fitness'; }
};
