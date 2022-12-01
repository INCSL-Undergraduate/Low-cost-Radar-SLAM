// Auto-generated. Do not edit!

// (in-package subpub_simultane.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class complex {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.real = null;
      this.imaginray = null;
    }
    else {
      if (initObj.hasOwnProperty('real')) {
        this.real = initObj.real
      }
      else {
        this.real = 0.0;
      }
      if (initObj.hasOwnProperty('imaginray')) {
        this.imaginray = initObj.imaginray
      }
      else {
        this.imaginray = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type complex
    // Serialize message field [real]
    bufferOffset = _serializer.float32(obj.real, buffer, bufferOffset);
    // Serialize message field [imaginray]
    bufferOffset = _serializer.float32(obj.imaginray, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type complex
    let len;
    let data = new complex(null);
    // Deserialize message field [real]
    data.real = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [imaginray]
    data.imaginray = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'subpub_simultane/complex';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c61ad788bc5613f5fbb09120ab3bfc8a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 real
    float32 imaginray
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new complex(null);
    if (msg.real !== undefined) {
      resolved.real = msg.real;
    }
    else {
      resolved.real = 0.0
    }

    if (msg.imaginray !== undefined) {
      resolved.imaginray = msg.imaginray;
    }
    else {
      resolved.imaginray = 0.0
    }

    return resolved;
    }
};

module.exports = complex;
