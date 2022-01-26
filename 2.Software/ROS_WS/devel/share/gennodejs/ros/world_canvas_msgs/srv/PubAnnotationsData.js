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


//-----------------------------------------------------------

class PubAnnotationsDataRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.annotation_ids = null;
      this.topic_name = null;
      this.topic_type = null;
      this.pub_as_list = null;
    }
    else {
      if (initObj.hasOwnProperty('annotation_ids')) {
        this.annotation_ids = initObj.annotation_ids
      }
      else {
        this.annotation_ids = [];
      }
      if (initObj.hasOwnProperty('topic_name')) {
        this.topic_name = initObj.topic_name
      }
      else {
        this.topic_name = '';
      }
      if (initObj.hasOwnProperty('topic_type')) {
        this.topic_type = initObj.topic_type
      }
      else {
        this.topic_type = '';
      }
      if (initObj.hasOwnProperty('pub_as_list')) {
        this.pub_as_list = initObj.pub_as_list
      }
      else {
        this.pub_as_list = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PubAnnotationsDataRequest
    // Serialize message field [annotation_ids]
    // Serialize the length for message field [annotation_ids]
    bufferOffset = _serializer.uint32(obj.annotation_ids.length, buffer, bufferOffset);
    obj.annotation_ids.forEach((val) => {
      bufferOffset = uuid_msgs.msg.UniqueID.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [topic_name]
    bufferOffset = _serializer.string(obj.topic_name, buffer, bufferOffset);
    // Serialize message field [topic_type]
    bufferOffset = _serializer.string(obj.topic_type, buffer, bufferOffset);
    // Serialize message field [pub_as_list]
    bufferOffset = _serializer.bool(obj.pub_as_list, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PubAnnotationsDataRequest
    let len;
    let data = new PubAnnotationsDataRequest(null);
    // Deserialize message field [annotation_ids]
    // Deserialize array length for message field [annotation_ids]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.annotation_ids = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.annotation_ids[i] = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [topic_name]
    data.topic_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [topic_type]
    data.topic_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pub_as_list]
    data.pub_as_list = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 16 * object.annotation_ids.length;
    length += object.topic_name.length;
    length += object.topic_type.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'world_canvas_msgs/PubAnnotationsDataRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1f37618ab20aa1492050e9599baf8ad0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Request server to publish annotations' data for a list of annotation identifiers
    # If pub_as_list is true, annotations will be packed in a list before publishing,
    # so topic_type must be an array of the requested annotations. However, if is false,
    # topic_type is just ignored and the published topic type is obtained from one of
    # the annotations in the list
    # NOTE: in both cases, all annotations must be of the same type
    
    uuid_msgs/UniqueID[] annotation_ids
    string topic_name
    string topic_type
    bool pub_as_list
    
    
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
    const resolved = new PubAnnotationsDataRequest(null);
    if (msg.annotation_ids !== undefined) {
      resolved.annotation_ids = new Array(msg.annotation_ids.length);
      for (let i = 0; i < resolved.annotation_ids.length; ++i) {
        resolved.annotation_ids[i] = uuid_msgs.msg.UniqueID.Resolve(msg.annotation_ids[i]);
      }
    }
    else {
      resolved.annotation_ids = []
    }

    if (msg.topic_name !== undefined) {
      resolved.topic_name = msg.topic_name;
    }
    else {
      resolved.topic_name = ''
    }

    if (msg.topic_type !== undefined) {
      resolved.topic_type = msg.topic_type;
    }
    else {
      resolved.topic_type = ''
    }

    if (msg.pub_as_list !== undefined) {
      resolved.pub_as_list = msg.pub_as_list;
    }
    else {
      resolved.pub_as_list = false
    }

    return resolved;
    }
};

class PubAnnotationsDataResponse {
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
    // Serializes a message object of type PubAnnotationsDataResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PubAnnotationsDataResponse
    let len;
    let data = new PubAnnotationsDataResponse(null);
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
    return 'world_canvas_msgs/PubAnnotationsDataResponse';
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
    const resolved = new PubAnnotationsDataResponse(null);
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
  Request: PubAnnotationsDataRequest,
  Response: PubAnnotationsDataResponse,
  md5sum() { return 'efc54bf1b4a6309b22d598d89ee85d1f'; },
  datatype() { return 'world_canvas_msgs/PubAnnotationsData'; }
};
