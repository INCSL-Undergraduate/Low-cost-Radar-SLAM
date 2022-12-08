// Auto-generated. Do not edit!

// (in-package service_ex.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class WordCountRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WordCountRequest
    // Serialize message field [x]
    bufferOffset = _serializer.uint32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.uint32(obj.y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WordCountRequest
    let len;
    let data = new WordCountRequest(null);
    // Deserialize message field [x]
    data.x = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'service_ex/WordCountRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '64be90712af6ea79ae6f103da824ffcf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 x
    uint32 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WordCountRequest(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0
    }

    return resolved;
    }
};

class WordCountResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.z = null;
    }
    else {
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WordCountResponse
    // Serialize message field [z]
    bufferOffset = _serializer.uint32(obj.z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WordCountResponse
    let len;
    let data = new WordCountResponse(null);
    // Deserialize message field [z]
    data.z = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'service_ex/WordCountResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'afd4044726372c27eeace0df3a360adc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 z
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WordCountResponse(null);
    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: WordCountRequest,
  Response: WordCountResponse,
  md5sum() { return '2ad41f381ceb337a84acaf3c0801c353'; },
  datatype() { return 'service_ex/WordCount'; }
};
