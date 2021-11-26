// Auto-generated. Do not edit!

// (in-package ros_study.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Sys {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cpu_percent = null;
      this.virtual_memory_percent = null;
      this.disk_free = null;
      this.net_packets_recv = null;
      this.coretemp = null;
    }
    else {
      if (initObj.hasOwnProperty('cpu_percent')) {
        this.cpu_percent = initObj.cpu_percent
      }
      else {
        this.cpu_percent = 0.0;
      }
      if (initObj.hasOwnProperty('virtual_memory_percent')) {
        this.virtual_memory_percent = initObj.virtual_memory_percent
      }
      else {
        this.virtual_memory_percent = 0.0;
      }
      if (initObj.hasOwnProperty('disk_free')) {
        this.disk_free = initObj.disk_free
      }
      else {
        this.disk_free = 0;
      }
      if (initObj.hasOwnProperty('net_packets_recv')) {
        this.net_packets_recv = initObj.net_packets_recv
      }
      else {
        this.net_packets_recv = 0;
      }
      if (initObj.hasOwnProperty('coretemp')) {
        this.coretemp = initObj.coretemp
      }
      else {
        this.coretemp = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Sys
    // Serialize message field [cpu_percent]
    bufferOffset = _serializer.float32(obj.cpu_percent, buffer, bufferOffset);
    // Serialize message field [virtual_memory_percent]
    bufferOffset = _serializer.float32(obj.virtual_memory_percent, buffer, bufferOffset);
    // Serialize message field [disk_free]
    bufferOffset = _serializer.uint64(obj.disk_free, buffer, bufferOffset);
    // Serialize message field [net_packets_recv]
    bufferOffset = _serializer.uint64(obj.net_packets_recv, buffer, bufferOffset);
    // Serialize message field [coretemp]
    bufferOffset = _serializer.float32(obj.coretemp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Sys
    let len;
    let data = new Sys(null);
    // Deserialize message field [cpu_percent]
    data.cpu_percent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [virtual_memory_percent]
    data.virtual_memory_percent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [disk_free]
    data.disk_free = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [net_packets_recv]
    data.net_packets_recv = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [coretemp]
    data.coretemp = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_study/Sys';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6c474b8d8a1c88a0d03e2a77e0dd4bce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 cpu_percent
    float32 virtual_memory_percent
    uint64 disk_free
    uint64 net_packets_recv
    float32 coretemp
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Sys(null);
    if (msg.cpu_percent !== undefined) {
      resolved.cpu_percent = msg.cpu_percent;
    }
    else {
      resolved.cpu_percent = 0.0
    }

    if (msg.virtual_memory_percent !== undefined) {
      resolved.virtual_memory_percent = msg.virtual_memory_percent;
    }
    else {
      resolved.virtual_memory_percent = 0.0
    }

    if (msg.disk_free !== undefined) {
      resolved.disk_free = msg.disk_free;
    }
    else {
      resolved.disk_free = 0
    }

    if (msg.net_packets_recv !== undefined) {
      resolved.net_packets_recv = msg.net_packets_recv;
    }
    else {
      resolved.net_packets_recv = 0
    }

    if (msg.coretemp !== undefined) {
      resolved.coretemp = msg.coretemp;
    }
    else {
      resolved.coretemp = 0.0
    }

    return resolved;
    }
};

module.exports = Sys;
