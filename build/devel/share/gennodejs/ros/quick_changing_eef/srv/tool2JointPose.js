// Auto-generated. Do not edit!

// (in-package quick_changing_eef.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class tool2JointPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.inPose = null;
      this.isAngle = null;
    }
    else {
      if (initObj.hasOwnProperty('inPose')) {
        this.inPose = initObj.inPose
      }
      else {
        this.inPose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('isAngle')) {
        this.isAngle = initObj.isAngle
      }
      else {
        this.isAngle = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type tool2JointPoseRequest
    // Serialize message field [inPose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.inPose, buffer, bufferOffset);
    // Serialize message field [isAngle]
    bufferOffset = _serializer.bool(obj.isAngle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type tool2JointPoseRequest
    let len;
    let data = new tool2JointPoseRequest(null);
    // Deserialize message field [inPose]
    data.inPose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [isAngle]
    data.isAngle = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.inPose);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'quick_changing_eef/tool2JointPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c64cf1cf5867a561214ad28ae161e0fe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseStamped inPose
    bool isAngle
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    # 0: no frame
    # 1: global frame
    string frame_id
    
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
    const resolved = new tool2JointPoseRequest(null);
    if (msg.inPose !== undefined) {
      resolved.inPose = geometry_msgs.msg.PoseStamped.Resolve(msg.inPose)
    }
    else {
      resolved.inPose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.isAngle !== undefined) {
      resolved.isAngle = msg.isAngle;
    }
    else {
      resolved.isAngle = false
    }

    return resolved;
    }
};

class tool2JointPoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint = null;
    }
    else {
      if (initObj.hasOwnProperty('joint')) {
        this.joint = initObj.joint
      }
      else {
        this.joint = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type tool2JointPoseResponse
    // Serialize message field [joint]
    bufferOffset = _arraySerializer.float64(obj.joint, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type tool2JointPoseResponse
    let len;
    let data = new tool2JointPoseResponse(null);
    // Deserialize message field [joint]
    data.joint = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.joint.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'quick_changing_eef/tool2JointPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2d98f45f5f7d408b6a0d45a64e4813c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] joint
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new tool2JointPoseResponse(null);
    if (msg.joint !== undefined) {
      resolved.joint = msg.joint;
    }
    else {
      resolved.joint = []
    }

    return resolved;
    }
};

module.exports = {
  Request: tool2JointPoseRequest,
  Response: tool2JointPoseResponse,
  md5sum() { return 'df41041dcf782386cce1a3d9dec4e896'; },
  datatype() { return 'quick_changing_eef/tool2JointPose'; }
};
