// Auto-generated. Do not edit!

// (in-package world_canvas_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MapListEntry {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.session_id = null;
      this.date = null;
      this.map_id = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('session_id')) {
        this.session_id = initObj.session_id
      }
      else {
        this.session_id = '';
      }
      if (initObj.hasOwnProperty('date')) {
        this.date = initObj.date
      }
      else {
        this.date = 0;
      }
      if (initObj.hasOwnProperty('map_id')) {
        this.map_id = initObj.map_id
      }
      else {
        this.map_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapListEntry
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [session_id]
    bufferOffset = _serializer.string(obj.session_id, buffer, bufferOffset);
    // Serialize message field [date]
    bufferOffset = _serializer.int64(obj.date, buffer, bufferOffset);
    // Serialize message field [map_id]
    bufferOffset = _serializer.string(obj.map_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapListEntry
    let len;
    let data = new MapListEntry(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [session_id]
    data.session_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [date]
    data.date = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [map_id]
    data.map_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.session_id.length;
    length += object.map_id.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'world_canvas_msgs/MapListEntry';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '092f024758d394d17196cd37d999fdb0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new MapListEntry(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.session_id !== undefined) {
      resolved.session_id = msg.session_id;
    }
    else {
      resolved.session_id = ''
    }

    if (msg.date !== undefined) {
      resolved.date = msg.date;
    }
    else {
      resolved.date = 0
    }

    if (msg.map_id !== undefined) {
      resolved.map_id = msg.map_id;
    }
    else {
      resolved.map_id = ''
    }

    return resolved;
    }
};

module.exports = MapListEntry;
