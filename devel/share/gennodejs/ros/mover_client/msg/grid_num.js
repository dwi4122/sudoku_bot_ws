// Auto-generated. Do not edit!

// (in-package mover_client.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class grid_num {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.row = null;
      this.col = null;
      this.num = null;
    }
    else {
      if (initObj.hasOwnProperty('row')) {
        this.row = initObj.row
      }
      else {
        this.row = 0;
      }
      if (initObj.hasOwnProperty('col')) {
        this.col = initObj.col
      }
      else {
        this.col = 0;
      }
      if (initObj.hasOwnProperty('num')) {
        this.num = initObj.num
      }
      else {
        this.num = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type grid_num
    // Serialize message field [row]
    bufferOffset = _serializer.uint32(obj.row, buffer, bufferOffset);
    // Serialize message field [col]
    bufferOffset = _serializer.uint32(obj.col, buffer, bufferOffset);
    // Serialize message field [num]
    bufferOffset = _serializer.uint32(obj.num, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type grid_num
    let len;
    let data = new grid_num(null);
    // Deserialize message field [row]
    data.row = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [col]
    data.col = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [num]
    data.num = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mover_client/grid_num';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6197da302b9cc329eda7a2732cc26877';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new grid_num(null);
    if (msg.row !== undefined) {
      resolved.row = msg.row;
    }
    else {
      resolved.row = 0
    }

    if (msg.col !== undefined) {
      resolved.col = msg.col;
    }
    else {
      resolved.col = 0
    }

    if (msg.num !== undefined) {
      resolved.num = msg.num;
    }
    else {
      resolved.num = 0
    }

    return resolved;
    }
};

module.exports = grid_num;
