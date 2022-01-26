// Auto-generated. Do not edit!

// (in-package world_canvas_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');
let uuid_msgs = _finder('uuid_msgs');

//-----------------------------------------------------------

class Annotation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp = null;
      this.id = null;
      this.data_id = null;
      this.world = null;
      this.name = null;
      this.type = null;
      this.shape = null;
      this.color = null;
      this.size = null;
      this.pose = null;
      this.keywords = null;
      this.relationships = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new uuid_msgs.msg.UniqueID();
      }
      if (initObj.hasOwnProperty('data_id')) {
        this.data_id = initObj.data_id
      }
      else {
        this.data_id = new uuid_msgs.msg.UniqueID();
      }
      if (initObj.hasOwnProperty('world')) {
        this.world = initObj.world
      }
      else {
        this.world = '';
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('shape')) {
        this.shape = initObj.shape
      }
      else {
        this.shape = 0;
      }
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = new std_msgs.msg.ColorRGBA();
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseWithCovarianceStamped();
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
    // Serializes a message object of type Annotation
    // Serialize message field [timestamp]
    bufferOffset = _serializer.time(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = uuid_msgs.msg.UniqueID.serialize(obj.id, buffer, bufferOffset);
    // Serialize message field [data_id]
    bufferOffset = uuid_msgs.msg.UniqueID.serialize(obj.data_id, buffer, bufferOffset);
    // Serialize message field [world]
    bufferOffset = _serializer.string(obj.world, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [shape]
    bufferOffset = _serializer.int32(obj.shape, buffer, bufferOffset);
    // Serialize message field [color]
    bufferOffset = std_msgs.msg.ColorRGBA.serialize(obj.color, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.size, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseWithCovarianceStamped.serialize(obj.pose, buffer, bufferOffset);
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
    //deserializes a message object of type Annotation
    let len;
    let data = new Annotation(null);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset);
    // Deserialize message field [data_id]
    data.data_id = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset);
    // Deserialize message field [world]
    data.world = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [shape]
    data.shape = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [color]
    data.color = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseWithCovarianceStamped.deserialize(buffer, bufferOffset);
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
    length += object.name.length;
    length += object.type.length;
    length += geometry_msgs.msg.PoseWithCovarianceStamped.getMessageSize(object.pose);
    object.keywords.forEach((val) => {
      length += 4 + val.length;
    });
    length += 16 * object.relationships.length;
    return length + 104;
  }

  static datatype() {
    // Returns string type for a message object
    return 'world_canvas_msgs/Annotation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ad3b363d73f197c0fc0f70645a6b2598';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Annotation(null);
    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = {secs: 0, nsecs: 0}
    }

    if (msg.id !== undefined) {
      resolved.id = uuid_msgs.msg.UniqueID.Resolve(msg.id)
    }
    else {
      resolved.id = new uuid_msgs.msg.UniqueID()
    }

    if (msg.data_id !== undefined) {
      resolved.data_id = uuid_msgs.msg.UniqueID.Resolve(msg.data_id)
    }
    else {
      resolved.data_id = new uuid_msgs.msg.UniqueID()
    }

    if (msg.world !== undefined) {
      resolved.world = msg.world;
    }
    else {
      resolved.world = ''
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.shape !== undefined) {
      resolved.shape = msg.shape;
    }
    else {
      resolved.shape = 0
    }

    if (msg.color !== undefined) {
      resolved.color = std_msgs.msg.ColorRGBA.Resolve(msg.color)
    }
    else {
      resolved.color = new std_msgs.msg.ColorRGBA()
    }

    if (msg.size !== undefined) {
      resolved.size = geometry_msgs.msg.Vector3.Resolve(msg.size)
    }
    else {
      resolved.size = new geometry_msgs.msg.Vector3()
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseWithCovarianceStamped.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseWithCovarianceStamped()
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

module.exports = Annotation;
