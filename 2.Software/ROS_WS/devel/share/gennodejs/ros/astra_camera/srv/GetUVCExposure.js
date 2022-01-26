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

class GetUVCExposureRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetUVCExposureRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetUVCExposureRequest
    let len;
    let data = new GetUVCExposureRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'astra_camera/GetUVCExposureRequest';
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
    const resolved = new GetUVCExposureRequest(null);
    return resolved;
    }
};

class GetUVCExposureResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.exposure = null;
    }
    else {
      if (initObj.hasOwnProperty('exposure')) {
        this.exposure = initObj.exposure
      }
      else {
        this.exposure = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetUVCExposureResponse
    // Serialize message field [exposure]
    bufferOffset = _serializer.int32(obj.exposure, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetUVCExposureResponse
    let len;
    let data = new GetUVCExposureResponse(null);
    // Deserialize message field [exposure]
    data.exposure = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'astra_camera/GetUVCExposureResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0535ed1a1204bb999d0e7bea8f6c3c81';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 exposure
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetUVCExposureResponse(null);
    if (msg.exposure !== undefined) {
      resolved.exposure = msg.exposure;
    }
    else {
      resolved.exposure = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetUVCExposureRequest,
  Response: GetUVCExposureResponse,
  md5sum() { return '0535ed1a1204bb999d0e7bea8f6c3c81'; },
  datatype() { return 'astra_camera/GetUVCExposure'; }
};
