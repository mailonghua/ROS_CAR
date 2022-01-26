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

class EditAnnotationsDataRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
      this.annotation = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
      if (initObj.hasOwnProperty('annotation')) {
        this.annotation = initObj.annotation
      }
      else {
        this.annotation = new Annotation();
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new AnnotationData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EditAnnotationsDataRequest
    // Serialize message field [action]
    bufferOffset = _serializer.uint8(obj.action, buffer, bufferOffset);
    // Serialize message field [annotation]
    bufferOffset = Annotation.serialize(obj.annotation, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = AnnotationData.serialize(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EditAnnotationsDataRequest
    let len;
    let data = new EditAnnotationsDataRequest(null);
    // Deserialize message field [action]
    data.action = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [annotation]
    data.annotation = Annotation.deserialize(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = AnnotationData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Annotation.getMessageSize(object.annotation);
    length += AnnotationData.getMessageSize(object.data);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'world_canvas_msgs/EditAnnotationsDataRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '41ee6a631a74d3fee28d7fa0847f92d3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Request an auxiliary editor to add/modify/delete the data for the given annotation. The annotation
    # itself is passed just for information, to show extra information to the user or assist data edition,
    # but will not be changed.
    #  - On request, action involves whether the editor must show the given data or create it from scratch
    #  - On response, action provides the user choice concerning what to do with old and new annotation data
    
    uint8 NEW=0
    uint8 EDIT=1
    
    uint8 action
    
    Annotation annotation
    AnnotationData data
    
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
    const resolved = new EditAnnotationsDataRequest(null);
    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    if (msg.annotation !== undefined) {
      resolved.annotation = Annotation.Resolve(msg.annotation)
    }
    else {
      resolved.annotation = new Annotation()
    }

    if (msg.data !== undefined) {
      resolved.data = AnnotationData.Resolve(msg.data)
    }
    else {
      resolved.data = new AnnotationData()
    }

    return resolved;
    }
};

// Constants for message
EditAnnotationsDataRequest.Constants = {
  NEW: 0,
  EDIT: 1,
}

class EditAnnotationsDataResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new AnnotationData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EditAnnotationsDataResponse
    // Serialize message field [action]
    bufferOffset = _serializer.uint8(obj.action, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = AnnotationData.serialize(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EditAnnotationsDataResponse
    let len;
    let data = new EditAnnotationsDataResponse(null);
    // Deserialize message field [action]
    data.action = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = AnnotationData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += AnnotationData.getMessageSize(object.data);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'world_canvas_msgs/EditAnnotationsDataResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f3d451f2a08e1dc3084d378560b01c8e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UPDATE=10
    uint8 DELETE=12
    uint8 CANCEL=13
    
    uint8 action
    
    AnnotationData data 
    
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
    const resolved = new EditAnnotationsDataResponse(null);
    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    if (msg.data !== undefined) {
      resolved.data = AnnotationData.Resolve(msg.data)
    }
    else {
      resolved.data = new AnnotationData()
    }

    return resolved;
    }
};

// Constants for message
EditAnnotationsDataResponse.Constants = {
  UPDATE: 10,
  DELETE: 12,
  CANCEL: 13,
}

module.exports = {
  Request: EditAnnotationsDataRequest,
  Response: EditAnnotationsDataResponse,
  md5sum() { return '457c97e1836c61682d0f4bb2f4defba9'; },
  datatype() { return 'world_canvas_msgs/EditAnnotationsData'; }
};
