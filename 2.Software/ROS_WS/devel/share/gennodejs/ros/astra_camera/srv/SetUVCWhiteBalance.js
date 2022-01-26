// Auto-generated. Do not edit!

// (in-package astra_camera.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetUVCWhiteBalanceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.white_balance = null;
    }
    else {
      if (initObj.hasOwnProperty('white_balance')) {
        this.white_balance = initObj.white_balance
      }
      else {
        this.white_balance = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetUVCWhiteBalanceRequest
    // Serialize message field [white_balance]
    bufferOffset = _serializer.int32(obj.white_balance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetUVCWhiteBalanceRequest
    let len;
    let data = new SetUVCWhiteBalanceRequest(null);
    // Deserialize message field [white_balance]
    data.white_balance = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'astra_camera/SetUVCWhiteBalanceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fc2837b62008590625057801873acc63';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 white_balance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetUVCWhiteBalanceRequest(null);
    if (msg.white_balance !== undefined) {
      resolved.white_balance = msg.white_balance;
    }
    else {
      resolved.white_balance = 0
    }

    return resolved;
    }
};

class SetUVCWhiteBalanceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetUVCWhiteBalanceResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetUVCWhiteBalanceResponse
    let len;
    let data = new SetUVCWhiteBalanceResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'astra_camera/SetUVCWhiteBalanceResponse';
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
    const resolved = new SetUVCWhiteBalanceResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetUVCWhiteBalanceRequest,
  Response: SetUVCWhiteBalanceResponse,
  md5sum() { return 'fc2837b62008590625057801873acc63'; },
  datatype() { return 'astra_camera/SetUVCWhiteBalance'; }
};
