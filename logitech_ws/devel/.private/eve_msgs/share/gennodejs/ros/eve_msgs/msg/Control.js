// Auto-generated. Do not edit!

// (in-package eve_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Control {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.acceleration = null;
      this.brake = null;
      this.steering_angle = null;
      this.gear = null;
      this.indicator = null;
      this.headlight = null;
      this.horn = null;
      this.wiper = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = 0;
      }
      if (initObj.hasOwnProperty('brake')) {
        this.brake = initObj.brake
      }
      else {
        this.brake = 0;
      }
      if (initObj.hasOwnProperty('steering_angle')) {
        this.steering_angle = initObj.steering_angle
      }
      else {
        this.steering_angle = 0;
      }
      if (initObj.hasOwnProperty('gear')) {
        this.gear = initObj.gear
      }
      else {
        this.gear = 0;
      }
      if (initObj.hasOwnProperty('indicator')) {
        this.indicator = initObj.indicator
      }
      else {
        this.indicator = 0;
      }
      if (initObj.hasOwnProperty('headlight')) {
        this.headlight = initObj.headlight
      }
      else {
        this.headlight = 0;
      }
      if (initObj.hasOwnProperty('horn')) {
        this.horn = initObj.horn
      }
      else {
        this.horn = false;
      }
      if (initObj.hasOwnProperty('wiper')) {
        this.wiper = initObj.wiper
      }
      else {
        this.wiper = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Control
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = _serializer.int8(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [brake]
    bufferOffset = _serializer.int8(obj.brake, buffer, bufferOffset);
    // Serialize message field [steering_angle]
    bufferOffset = _serializer.int8(obj.steering_angle, buffer, bufferOffset);
    // Serialize message field [gear]
    bufferOffset = _serializer.uint8(obj.gear, buffer, bufferOffset);
    // Serialize message field [indicator]
    bufferOffset = _serializer.uint8(obj.indicator, buffer, bufferOffset);
    // Serialize message field [headlight]
    bufferOffset = _serializer.uint8(obj.headlight, buffer, bufferOffset);
    // Serialize message field [horn]
    bufferOffset = _serializer.bool(obj.horn, buffer, bufferOffset);
    // Serialize message field [wiper]
    bufferOffset = _serializer.uint8(obj.wiper, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Control
    let len;
    let data = new Control(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [brake]
    data.brake = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [steering_angle]
    data.steering_angle = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [gear]
    data.gear = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [indicator]
    data.indicator = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [headlight]
    data.headlight = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [horn]
    data.horn = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wiper]
    data.wiper = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'eve_msgs/Control';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab85032e3c290005bc65df0c69df38f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    # Range 0 to 100, 100 is max acceleration
    int8 acceleration
    # Range 0 to 100, 100 is max brake
    int8 brake
    # Range -40 to +40, +40 is maximum left turn
    int8 steering_angle
    
    # Gear
    uint8 EVE_REVERSE_GEAR=0
    uint8 EVE_NEUTRAL_GEAR=1
    uint8 EVE_FORWARD_GEAR=2
    uint8 EVE_BOOST_GEAR=3
    
    uint8 gear
    
    # Indicator
    uint8 EVE_INDICATOR_OFF=0
    uint8 EVE_INDICATOR_LEFT=1
    uint8 EVE_INDICATOR_RIGHT=2
    uint8 EVE_INDICATOR_HAZARD =3
    
    uint8 indicator
    
    # Headlight
    uint8 EVE_BEAM_OFF=0
    uint8 EVE_LOW_BEAM=1
    uint8 EVE_HIGH_BEAM=2
    
    uint8 headlight
    
    # Horn
    bool horn
    
    # Wiper
    uint8 EVE_WIPER_OFF=0
    uint8 EVE_WIPER_INTERMITTENT=1
    uint8 EVE_WIPER_CONTINUOUS=2
    
    uint8 wiper
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Control(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = msg.acceleration;
    }
    else {
      resolved.acceleration = 0
    }

    if (msg.brake !== undefined) {
      resolved.brake = msg.brake;
    }
    else {
      resolved.brake = 0
    }

    if (msg.steering_angle !== undefined) {
      resolved.steering_angle = msg.steering_angle;
    }
    else {
      resolved.steering_angle = 0
    }

    if (msg.gear !== undefined) {
      resolved.gear = msg.gear;
    }
    else {
      resolved.gear = 0
    }

    if (msg.indicator !== undefined) {
      resolved.indicator = msg.indicator;
    }
    else {
      resolved.indicator = 0
    }

    if (msg.headlight !== undefined) {
      resolved.headlight = msg.headlight;
    }
    else {
      resolved.headlight = 0
    }

    if (msg.horn !== undefined) {
      resolved.horn = msg.horn;
    }
    else {
      resolved.horn = false
    }

    if (msg.wiper !== undefined) {
      resolved.wiper = msg.wiper;
    }
    else {
      resolved.wiper = 0
    }

    return resolved;
    }
};

// Constants for message
Control.Constants = {
  EVE_REVERSE_GEAR: 0,
  EVE_NEUTRAL_GEAR: 1,
  EVE_FORWARD_GEAR: 2,
  EVE_BOOST_GEAR: 3,
  EVE_INDICATOR_OFF: 0,
  EVE_INDICATOR_LEFT: 1,
  EVE_INDICATOR_RIGHT: 2,
  EVE_INDICATOR_HAZARD: 3,
  EVE_BEAM_OFF: 0,
  EVE_LOW_BEAM: 1,
  EVE_HIGH_BEAM: 2,
  EVE_WIPER_OFF: 0,
  EVE_WIPER_INTERMITTENT: 1,
  EVE_WIPER_CONTINUOUS: 2,
}

module.exports = Control;
