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

class GetDeviceTypeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDeviceTypeRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDeviceTypeRequest
    let len;
    let data = new GetDeviceTypeRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'astra_camera/GetDeviceTypeRequest';
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
    const resolved = new GetDeviceTypeRequest(null);
    return resolved;
    }
};

class GetDeviceTypeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.device_type = null;
    }
    else {
      if (initObj.hasOwnProperty('device_type')) {
        this.device_type = initObj.device_type
      }
      else {
        this.device_type = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDeviceTypeResponse
    // Serialize message field [device_type]
    bufferOffset = _serializer.string(obj.device_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDeviceTypeResponse
    let len;
    let data = new GetDeviceTypeResponse(null);
    // Deserialize message field [device_type]
    data.device_type = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.device_type.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'astra_camera/GetDeviceTypeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4c8e9dd50b39344412b92ce9e1e9615c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string device_type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetDeviceTypeResponse(null);
    if (msg.device_type !== undefined) {
      resolved.device_type = msg.device_type;
    }
    else {
      resolved.device_type = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GetDeviceTypeRequest,
  Response: GetDeviceTypeResponse,
  md5sum() { return '4c8e9dd50b39344412b92ce9e1e9615c'; },
  datatype() { return 'astra_camera/GetDeviceType'; }
};
