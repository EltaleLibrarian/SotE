version = "us"
basename = "shadowoftheempire"

def apply(config, args):
    config['baseimg'] = f'baserom.{version}.z64'
    config['myimg'] = f'build/shadowoftheempire'
    config['mapfile'] = f'build/shadowoftheempire.map'
    config['source_directories'] = ['src', 'include']
    config['objdump_flags'] = ['-M','reg-names=32']
