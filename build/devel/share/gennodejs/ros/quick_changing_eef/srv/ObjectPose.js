// Auto-generated. Do not edit!

// (in-package quick_changing_eef.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let hirop_msgs = _finder('hirop_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ObjectPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.obj = null;
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('obj')) {
        this.obj = initObj.obj
      }
      else {
        this.obj = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new hirop_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectPoseRequest
    // Serialize message field [obj]
    bufferOffset = _serializer.string(obj.obj, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = hirop_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectPoseRequest
    let len;
    let data = new ObjectPoseRequest(null);
    // Deserialize message field [obj]
    data.obj = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = hirop_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.obj.length;
    return length + 52;
  }

  static datatype() {
    // Returns string type for a service object
    return 'quick_changing_eef/ObjectPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8a8be3862049ad2113f37ebda20c2769';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string obj
    hirop_msgs/Pose pose
    
    ================================================================================
    MSG: hirop_msgs/Pose
    geometry_msgs/Point position
    hirop_msgs/FixedAngle rpy
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: hirop_msgs/FixedAngle
    float64 R
    float64 P
    float64 Y
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectPoseRequest(null);
    if (msg.obj !== undefined) {
      resolved.obj = msg.obj;
    }
    else {
      resolved.obj = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = hirop_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new hirop_msgs.msg.Pose()
    }

    return resolved;
    }
};

class ObjectPoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectPoseResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int8(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectPoseResponse
    let len;
    let data = new ObjectPoseResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'quick_changing_eef/ObjectPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4414c67819626a1b8e0f043a9a0d6c9a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 result
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectPoseResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: ObjectPoseRequest,
  Response: ObjectPoseResponse,
  md5sum() { return '06db6cf8b9cbae300f41698097de40c6'; },
  datatype() { return 'quick_changing_eef/ObjectPose'; }
};
