// Auto-generated. Do not edit!

// (in-package frontier_exploration.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Frontier {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.size = null;
      this.min_distance = null;
      this.travel_point = null;
    }
    else {
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0;
      }
      if (initObj.hasOwnProperty('min_distance')) {
        this.min_distance = initObj.min_distance
      }
      else {
        this.min_distance = 0.0;
      }
      if (initObj.hasOwnProperty('travel_point')) {
        this.travel_point = initObj.travel_point
      }
      else {
        this.travel_point = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Frontier
    // Serialize message field [size]
    bufferOffset = _serializer.uint32(obj.size, buffer, bufferOffset);
    // Serialize message field [min_distance]
    bufferOffset = _serializer.float64(obj.min_distance, buffer, bufferOffset);
    // Serialize message field [travel_point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.travel_point, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Frontier
    let len;
    let data = new Frontier(null);
    // Deserialize message field [size]
    data.size = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [min_distance]
    data.min_distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [travel_point]
    data.travel_point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'frontier_exploration/Frontier';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8e57df42619e81a60a4a5920d716e4b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 size
    float64 min_distance
    geometry_msgs/Point travel_point
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Frontier(null);
    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0
    }

    if (msg.min_distance !== undefined) {
      resolved.min_distance = msg.min_distance;
    }
    else {
      resolved.min_distance = 0.0
    }

    if (msg.travel_point !== undefined) {
      resolved.travel_point = geometry_msgs.msg.Point.Resolve(msg.travel_point)
    }
    else {
      resolved.travel_point = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = Frontier;
