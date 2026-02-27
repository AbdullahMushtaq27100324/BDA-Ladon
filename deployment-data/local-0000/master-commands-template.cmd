write-file master-ready READY

#========================================
# 0000 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0000/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0000.yml experiment-output/0000/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0000.yml experiment-output/0000/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0000/slave-__id__/peer.log orderingpeer experiment-output/0000/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0000/slave-__id__/peer.trc experiment-output/0000/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0000/slave-__id__/clients.log orderingclient experiment-output/0000/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0000/slave-__id__/client experiment-output/0000/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0000/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0000


#========================================
# 0001 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0001/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0001.yml experiment-output/0001/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0001.yml experiment-output/0001/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0001/slave-__id__/peer.log orderingpeer experiment-output/0001/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0001/slave-__id__/peer.trc experiment-output/0001/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0001/slave-__id__/clients.log orderingclient experiment-output/0001/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0001/slave-__id__/client experiment-output/0001/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0001/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0001


#========================================
# 0002 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0002/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0002.yml experiment-output/0002/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0002.yml experiment-output/0002/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0002/slave-__id__/peer.log orderingpeer experiment-output/0002/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0002/slave-__id__/peer.trc experiment-output/0002/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0002/slave-__id__/clients.log orderingclient experiment-output/0002/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0002/slave-__id__/client experiment-output/0002/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0002/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0002


#========================================
# 0003 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0003/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0003.yml experiment-output/0003/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0003.yml experiment-output/0003/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0003/slave-__id__/peer.log orderingpeer experiment-output/0003/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0003/slave-__id__/peer.trc experiment-output/0003/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0003/slave-__id__/clients.log orderingclient experiment-output/0003/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0003/slave-__id__/client experiment-output/0003/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0003/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0003


#========================================
# 0004 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0004/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0004.yml experiment-output/0004/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0004.yml experiment-output/0004/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0004/slave-__id__/peer.log orderingpeer experiment-output/0004/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0004/slave-__id__/peer.trc experiment-output/0004/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0004/slave-__id__/clients.log orderingclient experiment-output/0004/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0004/slave-__id__/client experiment-output/0004/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0004/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0004


#========================================
# 0005 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0005/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0005.yml experiment-output/0005/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0005.yml experiment-output/0005/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0005/slave-__id__/peer.log orderingpeer experiment-output/0005/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0005/slave-__id__/peer.trc experiment-output/0005/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0005/slave-__id__/clients.log orderingclient experiment-output/0005/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0005/slave-__id__/client experiment-output/0005/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0005/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0005


#========================================
# 0006 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0006/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0006.yml experiment-output/0006/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0006.yml experiment-output/0006/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0006/slave-__id__/peer.log orderingpeer experiment-output/0006/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0006/slave-__id__/peer.trc experiment-output/0006/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0006/slave-__id__/clients.log orderingclient experiment-output/0006/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0006/slave-__id__/client experiment-output/0006/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0006/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0006


#========================================
# 0007 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0007/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0007.yml experiment-output/0007/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0007.yml experiment-output/0007/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0007/slave-__id__/peer.log orderingpeer experiment-output/0007/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0007/slave-__id__/peer.trc experiment-output/0007/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0007/slave-__id__/clients.log orderingclient experiment-output/0007/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0007/slave-__id__/client experiment-output/0007/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0007/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0007


#========================================
# 0008 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0008/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0008.yml experiment-output/0008/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0008.yml experiment-output/0008/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0008/slave-__id__/peer.log orderingpeer experiment-output/0008/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0008/slave-__id__/peer.trc experiment-output/0008/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0008/slave-__id__/clients.log orderingclient experiment-output/0008/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0008/slave-__id__/client experiment-output/0008/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0008/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0008


#========================================
# 0009 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0009/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0009.yml experiment-output/0009/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0009.yml experiment-output/0009/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0009/slave-__id__/peer.log orderingpeer experiment-output/0009/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0009/slave-__id__/peer.trc experiment-output/0009/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0009/slave-__id__/clients.log orderingclient experiment-output/0009/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0009/slave-__id__/client experiment-output/0009/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0009/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0009


#========================================
# 0010 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0010/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0010.yml experiment-output/0010/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0010.yml experiment-output/0010/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0010/slave-__id__/peer.log orderingpeer experiment-output/0010/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0010/slave-__id__/peer.trc experiment-output/0010/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0010/slave-__id__/clients.log orderingclient experiment-output/0010/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0010/slave-__id__/client experiment-output/0010/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0010/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0010


#========================================
# 0011 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0011/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0011.yml experiment-output/0011/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0011.yml experiment-output/0011/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0011/slave-__id__/peer.log orderingpeer experiment-output/0011/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0011/slave-__id__/peer.trc experiment-output/0011/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0011/slave-__id__/clients.log orderingclient experiment-output/0011/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0011/slave-__id__/client experiment-output/0011/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0011/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0011


#========================================
# 0012 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0012/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0012.yml experiment-output/0012/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0012.yml experiment-output/0012/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0012/slave-__id__/peer.log orderingpeer experiment-output/0012/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0012/slave-__id__/peer.trc experiment-output/0012/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0012/slave-__id__/clients.log orderingclient experiment-output/0012/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0012/slave-__id__/client experiment-output/0012/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0012/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0012


#========================================
# 0013 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0013/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0013.yml experiment-output/0013/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0013.yml experiment-output/0013/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0013/slave-__id__/peer.log orderingpeer experiment-output/0013/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0013/slave-__id__/peer.trc experiment-output/0013/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0013/slave-__id__/clients.log orderingclient experiment-output/0013/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0013/slave-__id__/client experiment-output/0013/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0013/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0013


#========================================
# 0014 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0014/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0014.yml experiment-output/0014/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0014.yml experiment-output/0014/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0014/slave-__id__/peer.log orderingpeer experiment-output/0014/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0014/slave-__id__/peer.trc experiment-output/0014/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0014/slave-__id__/clients.log orderingclient experiment-output/0014/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0014/slave-__id__/client experiment-output/0014/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0014/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0014


#========================================
# 0015 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0015/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0015.yml experiment-output/0015/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0015.yml experiment-output/0015/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0015/slave-__id__/peer.log orderingpeer experiment-output/0015/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0015/slave-__id__/peer.trc experiment-output/0015/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0015/slave-__id__/clients.log orderingclient experiment-output/0015/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0015/slave-__id__/client experiment-output/0015/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0015/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0015


#========================================
# 0016 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0016/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0016.yml experiment-output/0016/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0016.yml experiment-output/0016/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0016/slave-__id__/peer.log orderingpeer experiment-output/0016/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0016/slave-__id__/peer.trc experiment-output/0016/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0016/slave-__id__/clients.log orderingclient experiment-output/0016/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0016/slave-__id__/client experiment-output/0016/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0016/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0016


#========================================
# 0017 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0017/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0017.yml experiment-output/0017/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0017.yml experiment-output/0017/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0017/slave-__id__/peer.log orderingpeer experiment-output/0017/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0017/slave-__id__/peer.trc experiment-output/0017/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0017/slave-__id__/clients.log orderingclient experiment-output/0017/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0017/slave-__id__/client experiment-output/0017/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0017/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0017


#========================================
# 0018 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0018/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0018.yml experiment-output/0018/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0018.yml experiment-output/0018/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0018/slave-__id__/peer.log orderingpeer experiment-output/0018/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0018/slave-__id__/peer.trc experiment-output/0018/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0018/slave-__id__/clients.log orderingclient experiment-output/0018/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0018/slave-__id__/client experiment-output/0018/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0018/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0018


#========================================
# 0019 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0019/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0019.yml experiment-output/0019/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0019.yml experiment-output/0019/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0019/slave-__id__/peer.log orderingpeer experiment-output/0019/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0019/slave-__id__/peer.trc experiment-output/0019/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0019/slave-__id__/clients.log orderingclient experiment-output/0019/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0019/slave-__id__/client experiment-output/0019/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0019/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0019


#========================================
# 0020 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0020/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0020.yml experiment-output/0020/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0020.yml experiment-output/0020/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0020/slave-__id__/peer.log orderingpeer experiment-output/0020/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0020/slave-__id__/peer.trc experiment-output/0020/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0020/slave-__id__/clients.log orderingclient experiment-output/0020/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0020/slave-__id__/client experiment-output/0020/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0020/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0020


#========================================
# 0021 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0021/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0021.yml experiment-output/0021/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0021.yml experiment-output/0021/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0021/slave-__id__/peer.log orderingpeer experiment-output/0021/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0021/slave-__id__/peer.trc experiment-output/0021/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0021/slave-__id__/clients.log orderingclient experiment-output/0021/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0021/slave-__id__/client experiment-output/0021/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0021/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0021


#========================================
# 0022 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0022/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0022.yml experiment-output/0022/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0022.yml experiment-output/0022/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0022/slave-__id__/peer.log orderingpeer experiment-output/0022/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0022/slave-__id__/peer.trc experiment-output/0022/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0022/slave-__id__/clients.log orderingclient experiment-output/0022/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0022/slave-__id__/client experiment-output/0022/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0022/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0022


#========================================
# 0023 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0023/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0023.yml experiment-output/0023/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0023.yml experiment-output/0023/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0023/slave-__id__/peer.log orderingpeer experiment-output/0023/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0023/slave-__id__/peer.trc experiment-output/0023/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0023/slave-__id__/clients.log orderingclient experiment-output/0023/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0023/slave-__id__/client experiment-output/0023/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0023/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0023


#========================================
# 0024 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0024/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0024.yml experiment-output/0024/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0024.yml experiment-output/0024/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0024/slave-__id__/peer.log orderingpeer experiment-output/0024/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0024/slave-__id__/peer.trc experiment-output/0024/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0024/slave-__id__/clients.log orderingclient experiment-output/0024/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0024/slave-__id__/client experiment-output/0024/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0024/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0024


#========================================
# 0025 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0025/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0025.yml experiment-output/0025/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0025.yml experiment-output/0025/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0025/slave-__id__/peer.log orderingpeer experiment-output/0025/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0025/slave-__id__/peer.trc experiment-output/0025/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0025/slave-__id__/clients.log orderingclient experiment-output/0025/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0025/slave-__id__/client experiment-output/0025/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0025/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0025


#========================================
# 0026 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0026/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0026.yml experiment-output/0026/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0026.yml experiment-output/0026/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0026/slave-__id__/peer.log orderingpeer experiment-output/0026/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0026/slave-__id__/peer.trc experiment-output/0026/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0026/slave-__id__/clients.log orderingclient experiment-output/0026/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0026/slave-__id__/client experiment-output/0026/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0026/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0026


#========================================
# 0027 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0027/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0027.yml experiment-output/0027/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0027.yml experiment-output/0027/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0027/slave-__id__/peer.log orderingpeer experiment-output/0027/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0027/slave-__id__/peer.trc experiment-output/0027/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0027/slave-__id__/clients.log orderingclient experiment-output/0027/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0027/slave-__id__/client experiment-output/0027/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0027/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0027


#========================================
# 0028 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0028/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0028.yml experiment-output/0028/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0028.yml experiment-output/0028/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0028/slave-__id__/peer.log orderingpeer experiment-output/0028/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0028/slave-__id__/peer.trc experiment-output/0028/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0028/slave-__id__/clients.log orderingclient experiment-output/0028/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0028/slave-__id__/client experiment-output/0028/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0028/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0028


#========================================
# 0029 (local)
#========================================


# Wait for slaves.
wait for slaves peers 4
wait for slaves 1client 1

# Create log directory.
exec-start __all__ /dev/null mkdir -p experiment-output/0029/slave-__id__/config
exec-wait __all__ 2000

# Prepare config file.
exec-start peers /dev/null cp config/config-0029.yml experiment-output/0029/slave-__id__/config/config.yml
exec-wait peers 2000
exec-start 1client /dev/null cp config/config-0029.yml experiment-output/0029/slave-__id__/config/config.yml
exec-wait 1client 2000
sync peers
sync 1client

# Start peers.
discover-reset 4
exec-start peers experiment-output/0029/slave-__id__/peer.log orderingpeer experiment-output/0029/slave-__id__/config/config.yml 127.0.0.1:9999 127.0.0.1 127.0.0.1 experiment-output/0029/slave-__id__/peer.trc experiment-output/0029/slave-__id__/prof
discover-wait

wait for 2s
# Run clients locally and wait for them to stop.
exec-start 1client experiment-output/0029/slave-__id__/clients.log orderingclient experiment-output/0029/slave-__id__/config/config.yml 127.0.0.1:9999 experiment-output/0029/slave-__id__/client experiment-output/0029/slave-__id__/prof-client
exec-wait 1client 1920000 exec-start 1client experiment-output/0029/slave-__id__/FAILED echo Client failed or timed out; exec-wait 1client 2000
sync 1client

# Stop peers.
exec-signal peers SIGINT
wait for 5s

# Update master status.
write-file master-status 0029


#========================================
# Wrap up                                
#========================================

# Wait for all slaves, even if they were not involved in experiments.
# Wait for slaves.
wait for slaves 1client 1
wait for slaves peers 4

# Stop all slaves.
stop __all__
wait for 3s
