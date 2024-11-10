// Auto-generated. Do not edit!

// (in-package mover_client.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let grid_num = require('./grid_num.js');

//-----------------------------------------------------------

class grid_num_vector {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.numbered_grids = null;
    }
    else {
      if (initObj.hasOwnProperty('numbered_grids')) {
        this.numbered_grids = initObj.numbered_grids
      }
      else {
        this.numbered_grids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type grid_num_vector
    // Serialize message field [numbered_grids]
    // Serialize the length for message field [numbered_grids]
    bufferOffset = _serializer.uint32(obj.numbered_grids.length, buffer, bufferOffset);
    obj.numbered_grids.forEach((val) => {
      bufferOffset = grid_num.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type grid_num_vector
    let len;
    let data = new grid_num_vector(null);
    // Deserialize message field [numbered_grids]
    // Deserialize array length for message field [numbered_grids]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.numbered_grids = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.numbered_grids[i] = grid_num.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.numbered_grids.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mover_client/grid_num_vector';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '93d1cb10c3e6ec95919ceb70fdb3e870';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    grid_num[] numbered_grids
    
    ================================================================================
    MSG: mover_client/grid_num
    uint32 row
    uint32 col
    uint32 num
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new grid_num_vector(null);
    if (msg.numbered_grids !== undefined) {
      resolved.numbered_grids = new Array(msg.numbered_grids.length);
      for (let i = 0; i < resolved.numbered_grids.length; ++i) {
        resolved.numbered_grids[i] = grid_num.Resolve(msg.numbered_grids[i]);
      }
    }
    else {
      resolved.numbered_grids = []
    }

    return resolved;
    }
};

module.exports = grid_num_vector;
