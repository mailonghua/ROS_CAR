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

class SwitchIRCameraRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camera = null;
    }
    else {
      if (initObj.hasOwnProperty('camera')) {
        this.camera = initObj.camera
      }
      else {
        this.camera = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SwitchIRCameraRequest
    // Serialize message field [camera]
    bufferOffset = _serializer.string(obj.camera, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SwitchIRCameraRequest
    let len;
    let data = new SwitchIRCameraRequest(null);
    // Deserialize message field [camera]
    data.camera = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.camera.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'astra_camera/SwitchIRCameraRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8162e9a89f39d80b11a715b34e890034';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string camera
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SwitchIRCameraRequest(null);
    if (msg.camera !== undefined) {
      resolved.camera = msg.camera;
    }
    else {
      resolved.camera = ''
    }

    return resolved;
    }
};

class SwitchIRCameraResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SwitchIRCameraResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SwitchIRCameraResponse
    let len;
    let data = new SwitchIRCameraResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'astra_camera/SwitchIRCameraResponse';
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
    const resolved = new SwitchIRCameraResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SwitchIRCameraRequest,
  Response: SwitchIRCameraResponse,
  md5sum() { return '8162e9a89f39d80b11a715b34e890034'; },
  datatype() { return 'astra_camera/SwitchIRCamera'; }
};
