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

class tool2LinkPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.inPose = null;
    }
    else {
      if (initObj.hasOwnProperty('inPose')) {
        this.inPose = initObj.inPose
      }
      else {
        this.inPose = new geometry_msgs.msg.PoseStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type tool2LinkPoseRequest
    // Serialize message field [inPose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.inPose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type tool2LinkPoseRequest
    let len;
    let data = new tool2LinkPoseRequest(null);
    // Deserialize message field [inPose]
    data.inPose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.inPose);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'quick_changing_eef/tool2LinkPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '087e0c66669ee08ba8d38e78a2ad9f0f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseStamped inPose
    
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
    const resolved = new tool2LinkPoseRequest(null);
    if (msg.inPose !== undefined) {
      resolved.inPose = geometry_msgs.msg.PoseStamped.Resolve(msg.inPose)
    }
    else {
      resolved.inPose = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

class tool2LinkPoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.outPose = null;
    }
    else {
      if (initObj.hasOwnProperty('outPose')) {
        this.outPose = initObj.outPose
      }
      else {
        this.outPose = new geometry_msgs.msg.PoseStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type tool2LinkPoseResponse
    // Serialize message field [outPose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.outPose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type tool2LinkPoseResponse
    let len;
    let data = new tool2LinkPoseResponse(null);
    // Deserialize message field [outPose]
    data.outPose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.outPose);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'quick_changing_eef/tool2LinkPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7996889f3f56a260f8e0cf54859f534b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseStamped outPose
    
    
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
    const resolved = new tool2LinkPoseResponse(null);
    if (msg.outPose !== undefined) {
      resolved.outPose = geometry_msgs.msg.PoseStamped.Resolve(msg.outPose)
    }
    else {
      resolved.outPose = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

module.exports = {
  Request: tool2LinkPoseRequest,
  Response: tool2LinkPoseResponse,
  md5sum() { return '451f15a0288e63aaf0aa9741c1a43b65'; },
  datatype() { return 'quick_changing_eef/tool2LinkPose'; }
};
