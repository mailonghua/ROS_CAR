// Auto-generated. Do not edit!

// (in-package world_canvas_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RenameMapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_id = null;
      this.new_name = null;
    }
    else {
      if (initObj.hasOwnProperty('map_id')) {
        this.map_id = initObj.map_id
      }
      else {
        this.map_id = '';
      }
      if (initObj.hasOwnProperty('new_name')) {
        this.new_name = initObj.new_name
      }
      else {
        this.new_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RenameMapRequest
    // Serialize message field [map_id]
    bufferOffset = _serializer.string(obj.map_id, buffer, bufferOffset);
    // Serialize message field [new_name]
    bufferOffset = _serializer.string(obj.new_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RenameMapRequest
    let len;
    let data = new RenameMapRequest(null);
    // Deserialize message field [map_id]
    data.map_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [new_name]
    data.new_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.map_id.length;
    length += object.new_name.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'world_canvas_msgs/RenameMapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '94f4d84fa2d3173899807933af417784';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Service used to rename a given map.
    
    string map_id
    string new_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RenameMapRequest(null);
    if (msg.map_id !== undefined) {
      resolved.map_id = msg.map_id;
    }
    else {
      resolved.map_id = ''
    }

    if (msg.new_name !== undefined) {
      resolved.new_name = msg.new_name;
    }
    else {
      resolved.new_name = ''
    }

    return resolved;
    }
};

class RenameMapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RenameMapResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RenameMapResponse
    let len;
    let data = new RenameMapResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'world_canvas_msgs/RenameMapResponse';
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
    const resolved = new RenameMapResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: RenameMapRequest,
  Response: RenameMapResponse,
  md5sum() { return '94f4d84fa2d3173899807933af417784'; },
  datatype() { return 'world_canvas_msgs/RenameMap'; }
};
