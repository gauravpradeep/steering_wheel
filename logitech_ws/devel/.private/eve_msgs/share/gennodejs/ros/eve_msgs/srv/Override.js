// Auto-generated. Do not edit!

// (in-package eve_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class OverrideRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.controller = null;
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('controller')) {
        this.controller = initObj.controller
      }
      else {
        this.controller = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OverrideRequest
    // Serialize message field [controller]
    bufferOffset = std_msgs.msg.String.serialize(obj.controller, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int8(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OverrideRequest
    let len;
    let data = new OverrideRequest(null);
    // Deserialize message field [controller]
    data.controller = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.controller);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'eve_msgs/OverrideRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '10f3707f0a5f0ed060a0d1dbf2799eea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String controller
    
    # 0 REQUEST_CONTROL	(Controller to Priority Switcher)
    # 1 RELEASE_CONTROL	(Priority Switcher to Controller)
    # 2 RESUME_CONTROL	(Priority Switcher to Controller)
    # 3 CONTROLLER_EXIT	(Controller to Priority Switcher)
    
    int8 type
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OverrideRequest(null);
    if (msg.controller !== undefined) {
      resolved.controller = std_msgs.msg.String.Resolve(msg.controller)
    }
    else {
      resolved.controller = new std_msgs.msg.String()
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

class OverrideResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OverrideResponse
    // Serialize message field [status]
    bufferOffset = _serializer.bool(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OverrideResponse
    let len;
    let data = new OverrideResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'eve_msgs/OverrideResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a1255d4d998bd4d6585c64639b5ee9a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OverrideResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = false
    }

    return resolved;
    }
};

module.exports = {
  Request: OverrideRequest,
  Response: OverrideResponse,
  md5sum() { return '29cdd02e1e856c7f99b046d6ef4a7a75'; },
  datatype() { return 'eve_msgs/Override'; }
};
