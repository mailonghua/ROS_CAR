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

let Annotation = require('../msg/Annotation.js');

//-----------------------------------------------------------

class GetAnnotationsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.world = null;
      this.ids = null;
      this.names = null;
      this.types = null;
      this.keywords = null;
      this.relationships = null;
    }
    else {
      if (initObj.hasOwnProperty('world')) {
        this.world = initObj.world
      }
      else {
        this.world = '';
      }
      if (initObj.hasOwnProperty('ids')) {
        this.ids = initObj.ids
      }
      else {
        this.ids = [];
      }
      if (initObj.hasOwnProperty('names')) {
        this.names = initObj.names
      }
      else {
        this.names = [];
      }
      if (initObj.hasOwnProperty('types')) {
        this.types = initObj.types
      }
      else {
        this.types = [];
      }
      if (initObj.hasOwnProperty('keywords')) {
        this.keywords = initObj.keywords
      }
      else {
        this.keywords = [];
      }
      if (initObj.hasOwnProperty('relationships')) {
        this.relationships = initObj.relationships
      }
      else {
        this.relationships = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAnnotationsRequest
    // Serialize message field [world]
    bufferOffset = _serializer.string(obj.world, buffer, bufferOffset);
    // Serialize message field [ids]
    // Serialize the length for message field [ids]
    bufferOffset = _serializer.uint32(obj.ids.length, buffer, bufferOffset);
    obj.ids.forEach((val) => {
      bufferOffset = uuid_msgs.msg.UniqueID.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [names]
    bufferOffset = _arraySerializer.string(obj.names, buffer, bufferOffset, null);
    // Serialize message field [types]
    bufferOffset = _arraySerializer.string(obj.types, buffer, bufferOffset, null);
    // Serialize message field [keywords]
    bufferOffset = _arraySerializer.string(obj.keywords, buffer, bufferOffset, null);
    // Serialize message field [relationships]
    // Serialize the length for message field [relationships]
    bufferOffset = _serializer.uint32(obj.relationships.length, buffer, bufferOffset);
    obj.relationships.forEach((val) => {
      bufferOffset = uuid_msgs.msg.UniqueID.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAnnotationsRequest
    let len;
    let data = new GetAnnotationsRequest(null);
    // Deserialize message field [world]
    data.world = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ids]
    // Deserialize array length for message field [ids]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ids = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ids[i] = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [names]
    data.names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [types]
    data.types = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [keywords]
    data.keywords = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [relationships]
    // Deserialize array length for message field [relationships]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.relationships = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.relationships[i] = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.world.length;
    length += 16 * object.ids.length;
    object.names.forEach((val) => {
      length += 4 + val.length;
    });
    object.types.forEach((val) => {
      length += 4 + val.length;
    });
    object.keywords.forEach((val) => {
      length += 4 + val.length;
    });
    length += 16 * object.relationships.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'world_canvas_msgs/GetAnnotationsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a83f9980d7efa66065c5d298416d8283';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Various combinations of these filter criteria trigger various results
    # The only one mandatory is world_name; empty arrays are ignored
    string world
    uuid_msgs/UniqueID[] ids  # Retrieved annotation uuid is within this list
    string[] names            # Retrieved annotation name is within this list
    string[] types            # Retrieved annotation type is within this list
    string[] keywords         # Retrieved annotation has at least one of these keywords
    uuid_msgs/UniqueID[] relationships # Retrieve annotations related to those on this list
    
    
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
    const resolved = new GetAnnotationsRequest(null);
    if (msg.world !== undefined) {
      resolved.world = msg.world;
    }
    else {
      resolved.world = ''
    }

    if (msg.ids !== undefined) {
      resolved.ids = new Array(msg.ids.length);
      for (let i = 0; i < resolved.ids.length; ++i) {
        resolved.ids[i] = uuid_msgs.msg.UniqueID.Resolve(msg.ids[i]);
      }
    }
    else {
      resolved.ids = []
    }

    if (msg.names !== undefined) {
      resolved.names = msg.names;
    }
    else {
      resolved.names = []
    }

    if (msg.types !== undefined) {
      resolved.types = msg.types;
    }
    else {
      resolved.types = []
    }

    if (msg.keywords !== undefined) {
      resolved.keywords = msg.keywords;
    }
    else {
      resolved.keywords = []
    }

    if (msg.relationships !== undefined) {
      resolved.relationships = new Array(msg.relationships.length);
      for (let i = 0; i < resolved.relationships.length; ++i) {
        resolved.relationships[i] = uuid_msgs.msg.UniqueID.Resolve(msg.relationships[i]);
      }
    }
    else {
      resolved.relationships = []
    }

    return resolved;
    }
};

class GetAnnotationsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.message = null;
      this.annotations = null;
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
      if (initObj.hasOwnProperty('annotations')) {
        this.annotations = initObj.annotations
      }
      else {
        this.annotations = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAnnotationsResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [annotations]
    // Serialize the length for message field [annotations]
    bufferOffset = _serializer.uint32(obj.annotations.length, buffer, bufferOffset);
    obj.annotations.forEach((val) => {
      bufferOffset = Annotation.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAnnotationsResponse
    let len;
    let data = new GetAnnotationsResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [annotations]
    // Deserialize array length for message field [annotations]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.annotations = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.annotations[i] = Annotation.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    object.annotations.forEach((val) => {
      length += Annotation.getMessageSize(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'world_canvas_msgs/GetAnnotationsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3f08a089ab5c7535a0df505d2a3c7fd4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    # What went wrong, if anything
    bool result
    string message
    
    Annotation[] annotations
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetAnnotationsResponse(null);
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

    if (msg.annotations !== undefined) {
      resolved.annotations = new Array(msg.annotations.length);
      for (let i = 0; i < resolved.annotations.length; ++i) {
        resolved.annotations[i] = Annotation.Resolve(msg.annotations[i]);
      }
    }
    else {
      resolved.annotations = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetAnnotationsRequest,
  Response: GetAnnotationsResponse,
  md5sum() { return '359022e7802b23e8a76ae9f41f8321d4'; },
  datatype() { return 'world_canvas_msgs/GetAnnotations'; }
};
