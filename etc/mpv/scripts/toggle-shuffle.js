var state = 0

var commands = [
    'playlist-shuffle',
    'playlist-unshuffle'
]

function perform_action() {
    mp.command(commands[state])
    state = (state + 1) % commands.length
}

mp.add_key_binding('i','toggle-shuffle', perform_action)