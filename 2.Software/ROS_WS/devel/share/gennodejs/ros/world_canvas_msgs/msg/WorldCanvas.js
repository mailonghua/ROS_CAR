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

class WorldCanvas {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp = null;
      this.name = null;
      this.description = null;
      this.geometry = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('description')) {
        this.description = initObj.description
      }
      else {
        this.description = '';
      }
      if (initObj.hasOwnProperty('geometry')) {
        this.geometry = initObj.geometry
      }
      else {
        this.geometry = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WorldCanvas
    // Serialize message field [timestamp]
    bufferOffset = _serializer.time(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    // Serialize message field [geometry]
    bufferOffset = _serializer.string(obj.geometry, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WorldCanvas
    let len;
    let data = new WorldCanvas(null);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [geometry]
    data.geometry = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.description.length;
    length += object.geometry.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'world_canvas_msgs/WorldCanvas';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6d7c521a48d85a2b09f0d0c03fe5f648';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # World canvas: a generic descriptor for a world, typically containing one or more geometric maps
    # plus semantic information in the form of annotations.
    #  - timestamp   : Creation/last update time
    #  - name        : World name; it must be unique
    #  - description : Informal description
    #  - geometry    : 2D, 3D (just informative by now)
    
    time timestamp
    string name
    string description
    string geometry
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WorldCanvas(null);
    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = {secs: 0, nsecs: 0}
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.description !== undefined) {
      resolved.description = msg.description;
    }
    else {
      resolved.description = ''
    }

    if (msg.geometry !== undefined) {
      resolved.geometry = msg.geometry;
    }
    else {
      resolved.geometry = ''
    }

    return resolved;
    }
};

module.exports = WorldCanvas;
