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

let MapListEntry = require('../msg/MapListEntry.js');

//-----------------------------------------------------------

class ListMapsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListMapsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListMapsRequest
    let len;
    let data = new ListMapsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'world_canvas_msgs/ListMapsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Service used to list the most recent map from every map-making session.
    
    # No arguments at this time.
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ListMapsRequest(null);
    return resolved;
    }
};

class ListMapsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_list = null;
    }
    else {
      if (initObj.hasOwnProperty('map_list')) {
        this.map_list = initObj.map_list
      }
      else {
        this.map_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListMapsResponse
    // Serialize message field [map_list]
    // Serialize the length for message field [map_list]
    bufferOffset = _serializer.uint32(obj.map_list.length, buffer, bufferOffset);
    obj.map_list.forEach((val) => {
      bufferOffset = MapListEntry.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListMapsResponse
    let len;
    let data = new ListMapsResponse(null);
    // Deserialize message field [map_list]
    // Deserialize array length for message field [map_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.map_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.map_list[i] = MapListEntry.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.map_list.forEach((val) => {
      length += MapListEntry.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'world_canvas_msgs/ListMapsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ca5a33dd106a2c24cfd54c927d214957';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MapListEntry[] map_list
    
    
    ================================================================================
    MSG: world_canvas_msgs/MapListEntry
    # One entry in a list of maps.
    
    # Naming a map is optional.
    string name
    
    # Maps made by the make-a-map app are given a session ID, which is the
    # time when the map-making session was started, expressed as seconds
    # since the epoch and converted to a string.
    string session_id
    
    # Creation time of this map, in seconds since the epoch.
    int64 date
    
    # Unique ID of this map.
    string map_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ListMapsResponse(null);
    if (msg.map_list !== undefined) {
      resolved.map_list = new Array(msg.map_list.length);
      for (let i = 0; i < resolved.map_list.length; ++i) {
        resolved.map_list[i] = MapListEntry.Resolve(msg.map_list[i]);
      }
    }
    else {
      resolved.map_list = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ListMapsRequest,
  Response: ListMapsResponse,
  md5sum() { return 'ca5a33dd106a2c24cfd54c927d214957'; },
  datatype() { return 'world_canvas_msgs/ListMaps'; }
};
