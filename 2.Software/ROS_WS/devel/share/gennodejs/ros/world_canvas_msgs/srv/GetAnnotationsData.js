// Auto-generated. Do not edit!

// (in-package world_canvas_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let uuid_msgs = _finder('uuid_msgs');

//-----------------------------------------------------------

let AnnotationData = require('../msg/AnnotationData.js');

//-----------------------------------------------------------

class GetAnnotationsDataRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.annotation_ids = null;
    }
    else {
      if (initObj.hasOwnProperty('annotation_ids')) {
        this.annotation_ids = initObj.annotation_ids
      }
      else {
        this.annotation_ids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAnnotationsDataRequest
    // Serialize message field [annotation_ids]
    // Serialize the length for message field [annotation_ids]
    bufferOffset = _serializer.uint32(obj.annotation_ids.length, buffer, bufferOffset);
    obj.annotation_ids.forEach((val) => {
      bufferOffset = uuid_msgs.msg.UniqueID.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAnnotationsDataRequest
    let len;
    let data = new GetAnnotationsDataRequest(null);
    // Deserialize message field [annotation_ids]
    // Deserialize array length for message field [annotation_ids]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.annotation_ids = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.annotation_ids[i] = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 16 * object.annotation_ids.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'world_canvas_msgs/GetAnnotationsDataRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fc0f6207fc1c9b03add292ade8ff7951';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Request annotations' data for a list of annotation identifiers
    
    uuid_msgs/UniqueID[] annotation_ids
    
    
    ================================================================================
    MSG: uuid_msgs/UniqueID
    # A universally unique identifier (UUID).
    #
    #  http://en.wikipedia.org/wiki/Universally_unique_identifier
    #  http://tools.ietf.org/html/rfc4122.html
    
    uint8[16] uuid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetAnnotationsDataRequest(null);
    if (msg.annotation_ids !== undefined) {
      resolved.annotation_ids = new Array(msg.annotation_ids.length);
      for (let i = 0; i < resolved.annotation_ids.length; ++i) {
        resolved.annotation_ids[i] = uuid_msgs.msg.UniqueID.Resolve(msg.annotation_ids[i]);
      }
    }
    else {
      resolved.annotation_ids = []
    }

    return resolved;
    }
};

class GetAnnotationsDataResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.message = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAnnotationsDataResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [data]
    // Serialize the length for message field [data]
    bufferOffset = _serializer.uint32(obj.data.length, buffer, bufferOffset);
    obj.data.forEach((val) => {
      bufferOffset = AnnotationData.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAnnotationsDataResponse
    let len;
    let data = new GetAnnotationsDataResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [data]
    // Deserialize array length for message field [data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.data[i] = AnnotationData.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    object.data.forEach((val) => {
      length += AnnotationData.getMessageSize(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'world_canvas_msgs/GetAnnotationsDataResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5138c2b0e307350745b95b31397311c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # What went wrong, if anything
    bool result
    string message
    
    AnnotationData[] data 
    
    ================================================================================
    MSG: world_canvas_msgs/AnnotationData
    # Data for an element in a semantic map stored as a byte array generated by ros::serialization
    # These objects are unique, although they can be referenced by one or more annotations
    #  - id   : Object unique id; data_id field on Annotation messages point to this uuid
    #  - type : Object type; duplicated from annotation for convenience on deserialization
    #  - data : Serialized data
    uuid_msgs/UniqueID id
    string type
    uint8[] data
    
    ================================================================================
    MSG: uuid_msgs/UniqueID
    # A universally unique identifier (UUID).
    #
    #  http://en.wikipedia.org/wiki/Universally_unique_identifier
    #  http://tools.ietf.org/html/rfc4122.html
    
    uint8[16] uuid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetAnnotationsDataResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.data !== undefined) {
      resolved.data = new Array(msg.data.length);
      for (let i = 0; i < resolved.data.length; ++i) {
        resolved.data[i] = AnnotationData.Resolve(msg.data[i]);
      }
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetAnnotationsDataRequest,
  Response: GetAnnotationsDataResponse,
  md5sum() { return '91d9a7f0b1315b44e207eeb7e9326135'; },
  datatype() { return 'world_canvas_msgs/GetAnnotationsData'; }
};
