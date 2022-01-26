// Auto-generated. Do not edit!

// (in-package world_canvas_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Annotation = require('../msg/Annotation.js');
let AnnotationData = require('../msg/AnnotationData.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SaveAnnotationsDataRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.annotations = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('annotations')) {
        this.annotations = initObj.annotations
      }
      else {
        this.annotations = [];
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
    // Serializes a message object of type SaveAnnotationsDataRequest
    // Serialize message field [annotations]
    // Serialize the length for message field [annotations]
    bufferOffset = _serializer.uint32(obj.annotations.length, buffer, bufferOffset);
    obj.annotations.forEach((val) => {
      bufferOffset = Annotation.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [data]
    // Serialize the length for message field [data]
    bufferOffset = _serializer.uint32(obj.data.length, buffer, bufferOffset);
    obj.data.forEach((val) => {
      bufferOffset = AnnotationData.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveAnnotationsDataRequest
    let len;
    let data = new SaveAnnotationsDataRequest(null);
    // Deserialize message field [annotations]
    // Deserialize array length for message field [annotations]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.annotations = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.annotations[i] = Annotation.deserialize(buffer, bufferOffset)
    }
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
    object.annotations.forEach((val) => {
      length += Annotation.getMessageSize(val);
    });
    object.data.forEach((val) => {
      length += AnnotationData.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'world_canvas_msgs/SaveAnnotationsDataRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd204dc5afba8bb6886ec4a83711f9c6e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Utility service kept to make debug and testing easier:
    #   saves together annotations and its data assuming a 1-1 relationship.
    
    Annotation[] annotations
    AnnotationData[] data 
    
    ================================================================================
    MSG: world_canvas_msgs/Annotation
    # Annotation: a generic descriptor for an element (object) in a semantic map
    # An annotation can be used to introspect, visualize or key into database filters/searches without
    # having to touch the described object directly
    #  - timestamp : Creation/last update time
    #  - world     : World the object belongs to
    #  - id        : Annotation unique id
    #  - data_id   : Referenced object unique id (an object can be reference by 1 or more annotations)
    #  - name      : Referenced object name
    #  - type      : Referenced object type (a message type, as world canvas objects are ROS messages)
    #  - shape     : One of 1 (CUBE), 2 (SPHERE), 3 (CYLINDER), 9 (TEXT)
    #  - color     : R, G, B, A (optional)
    #  - size      : X, Y, Z (optional)
    #  - keywords  : Generic properties of this object: allows basic filtering without introspecting
    #                the object itself
    #  - relationships : List of associated annotations, used for retrieving operational sets of objects
    
    # General properties
    time timestamp
    uuid_msgs/UniqueID id
    uuid_msgs/UniqueID data_id
    string world
    string name
    string type
    
    # Physical properties
    int32  shape
    std_msgs/ColorRGBA color
    geometry_msgs/Vector3 size
    geometry_msgs/PoseWithCovarianceStamped pose
    
    # Querying properties
    string[] keywords
    uuid_msgs/UniqueID[] relationships
    
    ================================================================================
    MSG: uuid_msgs/UniqueID
    # A universally unique identifier (UUID).
    #
    #  http://en.wikipedia.org/wiki/Universally_unique_identifier
    #  http://tools.ietf.org/html/rfc4122.html
    
    uint8[16] uuid
    
    ================================================================================
    MSG: std_msgs/ColorRGBA
    float32 r
    float32 g
    float32 b
    float32 a
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/PoseWithCovarianceStamped
    # This expresses an estimated pose with a reference coordinate frame and timestamp
    
    Header header
    PoseWithCovariance pose
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/PoseWithCovariance
    # This represents a pose in free space with uncertainty.
    
    Pose pose
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveAnnotationsDataRequest(null);
    if (msg.annotations !== undefined) {
      resolved.annotations = new Array(msg.annotations.length);
      for (let i = 0; i < resolved.annotations.length; ++i) {
        resolved.annotations[i] = Annotation.Resolve(msg.annotations[i]);
      }
    }
    else {
      resolved.annotations = []
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

class SaveAnnotationsDataResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.message = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveAnnotationsDataResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveAnnotationsDataResponse
    let len;
    let data = new SaveAnnotationsDataResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'world_canvas_msgs/SaveAnnotationsDataResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b543fbd3518c791be28589b850702201';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # What went wrong, if anything
    bool result
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveAnnotationsDataResponse(null);
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

    return resolved;
    }
};

module.exports = {
  Request: SaveAnnotationsDataRequest,
  Response: SaveAnnotationsDataResponse,
  md5sum() { return '60d78492918896c3c2a6be65553f2c9e'; },
  datatype() { return 'world_canvas_msgs/SaveAnnotationsData'; }
};
