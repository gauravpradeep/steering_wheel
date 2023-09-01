#!/usr/bin/nodejs   
/*
    Created on: 19/9/2019
    Author: Sarathkrishnan Ramesh
*/

var net = require('net');
var g = require('logitech-g29');

var HOST = '127.0.0.1';
var PORT = 1338;

var client = new net.Socket();

var ai_mode = {
    autocenter: false,
    range: 900
};

var manual_mode = {
    autocenter: false,
    range: 900
};

var Control = function() {
    return {
        wheel_value: 50,
        throttle: 0,
        brake: 0,
        gear: 1,
        driving_mode: 0,
        hazard: 0,
        horn: 0,
        wiper: 0,
        headlight: 0,
        indicator: 0
    };
}

var logitech_control = Control();
var logitech_data = Object();

function display_gear_state() {
    switch(logitech_control.gear) {
        case 0: console.log("REVERSE GEAR" + logitech_control.driving_mode);
                break;
        case 1: console.log("NEUTRAL GEAR" + logitech_control.driving_mode);
                break;
        case 2: console.log("FORWARD GEAR" + logitech_control.driving_mode);
                break;
        case 3: console.log("BOOST GEAR" + logitech_control.driving_mode);
    }
}

console.log("ai_mode " + ai_mode);
console.log("manual_mode " + manual_mode);
// Logitech Steering by default launches in AI Mode
g.connect(ai_mode, function (e) {
    g.forceFriction(0);
});

// Sets throttle value in rage 0-100
g.on('pedals-gas', function (value) {
    logitech_control.acceleration = value * 100.0;
    // g.leds(val);
});

// Sets throttle value in rage 0-100
g.on('pedals-brake', function (value) {
    logitech_control.brake = value * 100.0;
    // g.leds(val);
});

// Gear Shift: Down
g.on('wheel-shift_left', function (value) {
    if(value)
    {
        logitech_control.gear = (logitech_control.gear == 0) ? 0 : logitech_control.gear - 1;
        display_gear_state();
    }
});

//Gear Shift: Up
g.on('wheel-shift_right', function (value) {
    if(value)
    {
        logitech_control.gear = (logitech_control.gear == 3) ? 3 : logitech_control.gear + 1;
        display_gear_state();
    }
});

// Sets steering wheel value in range 0-100
g.on('wheel-turn', function (value) {
    logitech_control.wheel_value = value;
});

// Change to AI Mode
g.on("wheel-button_plus",function (value) {
    if(value)
    {
        logitech_control.driving_mode = 0
        g.connect(ai_mode,function (err) {
            g.forceFriction(0);
        });

        console.log("AI MODE");
        g.leds('00111');
    }
});

// Change to Manual Mode
g.on("wheel-button_minus",function (value) {
    if(value)
    {
        logitech_control.driving_mode = 1

        g.connect(manual_mode, function (err) {
            g.forceFriction(0);
        });

        console.log("MANUAL MODE");        
        g.leds('11100');
    }
});

// HAZARD
g.on("wheel-button_x", function (value) {
    if(value)
        logitech_control.indicator = (logitech_control.indicator == 1 || logitech_control.indicator == 2) ? 0 : 1;
});

// WIPER
g.on("wheel-button_square", function (value) {
    if(value)
    {
        switch(logitech_control.wiper)
        {
            case 0: logitech_control.wiper++
                    console.log("WIPER: INTERMTTENT");
                    break;
            case 1: logitech_control.wiper++;
                    console.log("WIPER: CONTINUTOUS");
                    break;
            case 2: logitech_control.wiper++
                    console.log("WIPER: OFF");
                    break;
        }
    }
});

// HORN
g.on("wheel-button_circle", function (value) {
    logitech_control.horn = value;
});

// HEADLIGHT
g.on("wheel-button_triangle", function (value) {
    switch(logitech_control.headlight)
        {
            case 0: logitech_control.headlight++
                    console.log("HEADLIGHT: LOW BEAM");
                    break;
            case 1: logitech_control.headlight++;
                    console.log("HEADLIGHT: HIGH BEAM");
                    break;
            case 2: logitech_control.headlight = 0
                    console.log("HEADLIGHT: OFF");
                    break;
        }
});

// INDICATOR LEFT
g.on("wheel-button_l2", function (value) {
    if(value)
        logitech_control.indicator = (logitech_control.indicator == 1) ? 0 : 1;
});

// INDICATOR RIGHT
g.on("wheel-button_r2", function (value) {
    if(value)
        logitech_control.indicator = (logitech_control.indicator == 2) ? 0 : 2;
});

// INDICATOR OFF
g.on("wheel-button_playstation", function (value) {
    if(value)
        logitech_control.indicator = 0;
});

// HORN
g.on("wheel-button_spinner", function (value) {
    logitech_control.horn = value;
});

// Convert Eve steer value to Logitech wheel value
var steer_to_wheelvalue = function (steer_value) {
    var dir;
    if(steer_value == 0)
        dir = 1
    else
        dir = steer_value / Math.abs(steer_value);

    steer_value = Math.abs(steer_value);

    if(steer_value <= 13)
    {
        return 50 - (dir * ((steer_value / 13.0) * 30));
    }
    else
    {
        return 50 - (dir * ((steer_value - 13) * (20.0 / 27) + 30));
    }
}

// Convert Logitech wheel value Eve steer value
var wheelvalue_to_steer = function (wheel_value) {
    wheel_value = wheel_value - 50
    var dir;
    if (wheel_value == 0) {
        dir = 1
    }
    else {
        dir = wheel_value / Math.abs(wheel_value)
    }
    wheel_value = Math.abs(wheel_value)

    if(wheel_value < 30)
    {
        return dir * (wheel_value * 13) / 30.0;
    }
    else
    {
        return dir * ((wheel_value - 30) * (27.0 / 20) + 13);
    }
}

// Connecting to server
var connected = false
client.connect(PORT, HOST, function () {
    console.log('CONNECTED TO: ' + HOST + ":" + PORT);
    connected = true;
});

//Operating Steering Wheel
client.on('data', function(data) {    
    JSON.stringify(data);

    // jsongString = jsonString.substring(data.lastIndexOf("{"),data.length)

    if(!logitech_control.driving_mode)
        g.leds('00111');

    try {
        var ai = JSON.parse(data);

        var ai_wheel_value = steer_to_wheelvalue(ai["steer"]);

        var diff = Math.floor(ai_wheel_value) - logitech_control.wheel_value;

        var max_force = 0.4, acceptable_range = 2, min_force = 0.15, danger_range = 5;

        //Steering Control for AI MODE
        if(!logitech_control.driving_mode)
        {
            if (Math.abs(diff) > danger_range)
            {
                if(diff > 0) 
                    g.forceConstant(0.5 + max_force);
                else if(diff < 0) 
                    g.forceConstant(0.5 - max_force);
            }
            else
            {
                g.forceConstant(0.5 + diff / acceptable_range * min_force);
            }
        }
    }
    catch(err) {
        // console.log(err)
    }
});

// Exception handling
client.on('error', function (e) {
    console.error("inner", e.message);
});


client.on('close', function () {
    console.log('Connection closed');
});


client.on('uncaughtException', function (error) {
    console.log("Uncaught", error);
});

// Sending socket data to server
function send_data() {
    logitech_data["steer"] = -1 * wheelvalue_to_steer(logitech_control.wheel_value);
    logitech_data["acceleration"] = logitech_control.acceleration;
    logitech_data["brake"] = logitech_control.brake;
    logitech_data["gear"] = logitech_control.gear;
    logitech_data["driving_mode"] = logitech_control.driving_mode;
    logitech_data["hazard"] = logitech_control.hazard;
    logitech_data["horn"] = logitech_control.horn;
    logitech_data["wiper"] = logitech_control.wiper;
    logitech_data["headlight"] = logitech_control.headlight;
    logitech_data["indicator"] = logitech_control.indicator;
    logitech_data["wheel_angle"] = logitech_control.wheel_value;
    
    if(connected)
        client.write(JSON.stringify(logitech_data))
}

// Custom autocenter when in manual mode
function auto_center() {
    if(logitech_control.driving_mode)
    {
        var max_force = 0.18, acceptable_range = 2, min_force = 0.1, danger_range = 5;
        diff = 50 - logitech_control.wheel_value
        if (Math.abs(diff) > danger_range)
        {
            if(diff > 0) 
                g.forceConstant(0.5 + max_force);
            else if(diff < 0) 
                g.forceConstant(0.5 - max_force);
        }
        else
        {
            g.forceConstant(0.5 + diff / acceptable_range * min_force);
        }
    }
}

// Sending data to server at a constant rate
var send_data_timer = setInterval(send_data, 50)        // 20 Hz

// Auto center logitech wheel at a constant rate
var auto_center_timer = setInterval(auto_center, 10)     // 100 Hz