//---------//
// IMPORTS //
//---------//

local bundle = import 'lib/bundle.libsonnet';
local file_paths = import 'lib/file_paths.libsonnet';
local k = import 'lib/karabiner.libsonnet';

local unless_hypervisor_ide_remoteDesktop_terminalEmulator = k.condition(
    'unless',
    bundle.hypervisors + bundle.ides + bundle.remoteDesktops + bundle.terminalEmulators,
    file_paths.remoteDesktops
);

local unless_hypervisor_ide_remoteDesktop = k.condition(
    'unless',
    bundle.hypervisors + bundle.ides + bundle.remoteDesktops,
    file_paths.remoteDesktops
);

local unless_remoteDesktop_hypervisor = k.condition(
    'unless',
    bundle.hypervisors + bundle.remoteDesktops,
    file_paths.remoteDesktops
);

//------//
// MAIN //
//------//
{
    "profiles": [
        {
            "complex_modifications": {
                title: 'Linux Shortcuts',
                rules: [
                    k.rule('Ctrl+Home',
                        k.input('home', ['control']),
                        k.outputKey('left_arrow', ['command']),
                        unless_hypervisor_ide_remoteDesktop_terminalEmulator),
                    k.rule('Ctrl+End',
                        k.input('end', ['control']),
                        k.outputKey('right_arrow', ['command']),
                        unless_hypervisor_ide_remoteDesktop_terminalEmulator),

                    k.rule('Ctrl+LeftArrow',
                        k.input('left_arrow', ['control']),
                        k.outputKey('left_arrow', ['option']),
                        unless_hypervisor_ide_remoteDesktop_terminalEmulator),
                    k.rule('Ctrl+RightArrow',
                        k.input('right_arrow', ['control']),
                        k.outputKey('right_arrow', ['option']),
                        unless_hypervisor_ide_remoteDesktop_terminalEmulator),
                    k.rule('Ctrl+Shift+LeftArrow',
                        k.input('left_arrow', ['control', 'shift']),
                        k.outputKey('left_arrow', ['option', 'shift']),
                        unless_hypervisor_ide_remoteDesktop_terminalEmulator),
                    k.rule('Ctrl+Shift+RightArrow)',
                        k.input('right_arrow', ['control', 'shift']),
                        k.outputKey('right_arrow', ['option', 'shift']),
                        unless_hypervisor_ide_remoteDesktop_terminalEmulator),

                    k.rule('Ctrl+Backspace',
                        k.input('delete_or_backspace', ['control']),
                        k.outputKey('delete_or_backspace', ['option']),
                        unless_hypervisor_ide_remoteDesktop_terminalEmulator),
                    k.rule('Ctrl+Delete',
                        k.input('delete_forward', ['control']),
                        k.outputKey('delete_forward', ['option']),
                        unless_hypervisor_ide_remoteDesktop_terminalEmulator),

                    k.rule('Ctrl+Enter',
                        k.input('return_or_enter', ['control']),
                        k.outputKey('return_or_enter', ['command']),
                        unless_hypervisor_ide_remoteDesktop_terminalEmulator),
                    k.rule('Ctrl+Shift+Enter',
                        k.input('return_or_enter', ['control', 'shift']),
                        k.outputKey('return_or_enter', ['command', 'shift']),
                        unless_hypervisor_ide_remoteDesktop_terminalEmulator),

                    ////////////////////////////////////////////////////////////////////////////////////////////////
                    k.rule('Ctrl+A (Select all)',
                        k.input('a', ['control']),
                        k.outputKey('a', ['command']),
                        unless_hypervisor_ide_remoteDesktop_terminalEmulator),
                    k.rule('Ctrl+B (Bold)',
                        k.input('b', ['control']),
                        k.outputKey('b', ['command']),
                        unless_hypervisor_ide_remoteDesktop_terminalEmulator),
                    k.rule('Ctrl+C (Copy)',
                        k.input('c', ['left_control']),
                        k.outputKey('c', ['command']),
                        unless_hypervisor_ide_remoteDesktop_terminalEmulator),
                    k.rule('Ctrl+F (Find)',
                        k.input('f', ['control']),
                        k.outputKey('f', ['command']),
                        unless_hypervisor_ide_remoteDesktop_terminalEmulator),
                    k.rule('Ctrl+I (xxx)',
                        k.input('i', ['control']),
                        k.outputKey('i', ['command']),
                        unless_hypervisor_ide_remoteDesktop_terminalEmulator),
                    k.rule('Ctrl+N (New Window)',
                        k.input('n', ['control']),
                        k.outputKey('n', ['command']),
                        unless_hypervisor_ide_remoteDesktop_terminalEmulator),
                    k.rule('Ctrl+O (Open)',
                        k.input('o', ['control']),
                        k.outputKey('o', ['command']),
                        unless_hypervisor_ide_remoteDesktop_terminalEmulator),
                    k.rule('Ctrl+P (Print)',
                        k.input('p', ['control']),
                        k.outputKey('p', ['command']),
                        unless_hypervisor_ide_remoteDesktop_terminalEmulator),
                    k.rule('Ctrl+S (Save)',
                        k.input('s', ['control']),
                        k.outputKey('s', ['command']),
                        unless_hypervisor_ide_remoteDesktop_terminalEmulator),
                    k.rule('Ctrl+T (New Tab)',
                        k.input('t', ['control']),
                        k.outputKey('t', ['command']),
                        unless_hypervisor_ide_remoteDesktop_terminalEmulator),
                    k.rule('Ctrl+V (Paste)',
                        k.input('v', ['control']),
                        k.outputKey('v', ['command']),
                        unless_hypervisor_ide_remoteDesktop_terminalEmulator),
                    k.rule('Ctrl+Shift+V (Paste Unformatted)',
                        k.input('v', ['control', 'shift']),
                        k.outputKey('v', ['command', 'shift']),
                        unless_hypervisor_ide_remoteDesktop_terminalEmulator),
                    //k.rule('Ctrl+W (Close Window)',
                    //       k.input('w', ['control']),
                    //       k.outputKey('w', ['command']),
                    //       unless_hypervisor_ide_remoteDesktop_terminalEmulator),
                    k.rule('Ctrl+X (Cut Text)',
                        k.input('x', ['control']),
                        k.outputKey('x', ['command']),
                        unless_hypervisor_ide_remoteDesktop_terminalEmulator),
                    k.rule('Ctrl+Y (ReDo)',
                        k.input('y', ['control']),
                        k.outputKey('y', ['command']),
                        unless_hypervisor_ide_remoteDesktop_terminalEmulator),
                    k.rule('Ctrl+Z (Undo)',
                        k.input('z', ['control']),
                        k.outputKey('z', ['command']),
                        unless_hypervisor_ide_remoteDesktop_terminalEmulator),

                    ////////////////////////////////////////////////////////////////////////////////////////////////

                    k.rule('Cmd [Open Spotlight] [Always]',
                        k.input('left_command', key_is_modifier=true),
                        [
                            k.outputKey('left_command', output_type='to'),
                            k.outputKey('spotlight', output_type='to_if_alone', key_code='apple_vendor_keyboard_key_code'),
                        ]),

                    //Hyper
                    {
                        "description": "CapsLock to Hyper (Cmd+Option+Cntl) or Escape (If Alone)",
                        "manipulators": [
                            {
                                "from": {
                                    "key_code": "caps_lock",
                                    "modifiers": {
                                        "optional": [
                                            "any"
                                        ]
                                    }
                                },
                                "to": [
                                    {
                                        "key_code": "left_command",
                                        "modifiers": ["left_option"]
                                    }
                                ],
                                "to_if_alone": [{ "key_code": "escape" }],
                                "type": "basic"
                            }
                        ]
                    },


                    // Double Tap Cmd+q to close app
                    {
                        "description": "Double tap Cmd-q (closes apps)",
                        "manipulators": [
                            {
                                "conditions": [
                                    {
                                        "name": "command-q",
                                        "type": "variable_if",
                                        "value": 1
                                    }
                                ],
                                "from": {
                                    "key_code": "q",
                                    "modifiers": { "mandatory": ["command"] }
                                },
                                "to": [
                                    {
                                        "key_code": "q",
                                        "modifiers": "left_command"
                                    }
                                ],
                                "type": "basic"
                            },
                            {
                                "from": {
                                    "key_code": "q",
                                    "modifiers": { "mandatory": ["command"] }
                                },
                                "to": [
                                    {
                                        "set_variable": {
                                            "name": "command-q",
                                            "value": 1
                                        }
                                    }
                                ],
                                "to_delayed_action": {
                                    "to_if_canceled": [
                                        {
                                            "set_variable": {
                                                "name": "command-q",
                                                "value": 0
                                            }
                                        }
                                    ],
                                    "to_if_invoked": [
                                        {
                                            "set_variable": {
                                                "name": "command-q",
                                                "value": 0
                                            }
                                        }
                                    ]
                                },
                                "type": "basic"
                            }
                        ]
                    },
                ],
            },
           "devices": [
                {
                    // MacBook Pro Internal keyboard
                    "identifiers": { "is_keyboard": true },
                    "simple_modifications": [
                        {
                            "from": { "key_code": "left_command" },
                            "to": [{ "key_code": "left_option" }]
                        },
                        {
                            "from": { "key_code": "left_option" },
                            "to": [{ "key_code": "left_command" }]
                        },
                        {
                            "from": { "key_code": "right_command" },
                            "to": [{ "key_code": "right_option" }]
                        },
                        {
                            "from": { "key_code": "right_option" },
                            "to": [{ "key_code": "right_control" }]
                        }
                    ]
                },
                {
                    // Logitech mouse
                    "identifiers": {
                        "is_keyboard": true,
                        "product_id": 50475,
                        "vendor_id": 1133
                    },
                    "ignore": true
                },
                {
                    // INCASE keyboard
                    "identifiers": {
                        "is_keyboard": true,
                        "is_pointing_device": true,
                        "product_id": 2092,
                        "vendor_id": 14145
                    },
                    "ignore": false
                }
            ],
            "name": "Default profile",
            "selected": true,
            "virtual_hid_keyboard": { "keyboard_type_v2": "ansi" }
        }
    ]
}

