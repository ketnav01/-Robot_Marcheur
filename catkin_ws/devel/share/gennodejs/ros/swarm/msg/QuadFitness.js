// Auto-generated. Do not edit!

// (in-package swarm.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Quad = require('./Quad.js');

//-----------------------------------------------------------

class QuadFitness {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.quad = null;
      this.fitness = null;
    }
    else {
      if (initObj.hasOwnProperty('quad')) {
        this.quad = initObj.quad
      }
      else {
        this.quad = new Quad();
      }
      if (initObj.hasOwnProperty('fitness')) {
        this.fitness = initObj.fitness
      }
      else {
        this.fitness = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QuadFitness
    // Serialize message field [quad]
    bufferOffset = Quad.serialize(obj.quad, buffer, bufferOffset);
    // Serialize message field [fitness]
    bufferOffset = _serializer.float64(obj.fitness, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QuadFitness
    let len;
    let data = new QuadFitness(null);
    // Deserialize message field [quad]
    data.quad = Quad.deserialize(buffer, bufferOffset);
    // Deserialize message field [fitness]
    data.fitness = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swarm/QuadFitness';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '12db978fc8bae8410b5b93a0f49fcdea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    swarm/Quad quad
    float64 fitness
    
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
    const resolved = new QuadFitness(null);
    if (msg.quad !== undefined) {
      resolved.quad = Quad.Resolve(msg.quad)
    }
    else {
      resolved.quad = new Quad()
    }

    if (msg.fitness !== undefined) {
      resolved.fitness = msg.fitness;
    }
    else {
      resolved.fitness = 0.0
    }

    return resolved;
    }
};

module.exports = QuadFitness;
