// Auto-generated. Do not edit!

// (in-package mover_arm_joints.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class move_and_confirmRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.move = null;
      this.confirm = null;
    }
    else {
      if (initObj.hasOwnProperty('move')) {
        this.move = initObj.move
      }
      else {
        this.move = 0.0;
      }
      if (initObj.hasOwnProperty('confirm')) {
        this.confirm = initObj.confirm
      }
      else {
        this.confirm = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type move_and_confirmRequest
    // Serialize message field [move]
    bufferOffset = _serializer.float64(obj.move, buffer, bufferOffset);
    // Serialize message field [confirm]
    bufferOffset = _serializer.float64(obj.confirm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type move_and_confirmRequest
    let len;
    let data = new move_and_confirmRequest(null);
    // Deserialize message field [move]
    data.move = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [confirm]
    data.confirm = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mover_arm_joints/move_and_confirmRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd3996e189f231d649f823398a7475c7d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 move
    float64 confirm
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new move_and_confirmRequest(null);
    if (msg.move !== undefined) {
      resolved.move = msg.move;
    }
    else {
      resolved.move = 0.0
    }

    if (msg.confirm !== undefined) {
      resolved.confirm = msg.confirm;
    }
    else {
      resolved.confirm = 0.0
    }

    return resolved;
    }
};

class move_and_confirmResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type move_and_confirmResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type move_and_confirmResponse
    let len;
    let data = new move_and_confirmResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mover_arm_joints/move_and_confirmResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new move_and_confirmResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: move_and_confirmRequest,
  Response: move_and_confirmResponse,
  md5sum() { return 'd3996e189f231d649f823398a7475c7d'; },
  datatype() { return 'mover_arm_joints/move_and_confirm'; }
};
