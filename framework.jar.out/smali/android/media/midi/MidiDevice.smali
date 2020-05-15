.class public final Landroid/media/midi/MidiDevice;
.super Ljava/lang/Object;
.source "MidiDevice.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/MidiDevice$MidiConnection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MidiDevice"

.field private static mMirroredDevices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/media/midi/MidiDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClientToken:Landroid/os/IBinder;

.field private final mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

.field private final mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

.field private final mDeviceToken:Landroid/os/IBinder;

.field private final mGuard:Ldalvik/system/CloseGuard;

.field private mIsDeviceClosed:Z

.field private final mMidiManager:Landroid/media/midi/IMidiManager;

.field private mNativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/midi/MidiDevice;->mMirroredDevices:Ljava/util/HashSet;

    return-void
.end method

.method constructor <init>(Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/IMidiManager;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;
    .param p2, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p3, "midiManager"    # Landroid/media/midi/IMidiManager;
    .param p4, "clientToken"    # Landroid/os/IBinder;
    .param p5, "deviceToken"    # Landroid/os/IBinder;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    .line 119
    iput-object p1, p0, Landroid/media/midi/MidiDevice;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 120
    iput-object p2, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    .line 121
    iput-object p3, p0, Landroid/media/midi/MidiDevice;->mMidiManager:Landroid/media/midi/IMidiManager;

    .line 122
    iput-object p4, p0, Landroid/media/midi/MidiDevice;->mClientToken:Landroid/os/IBinder;

    .line 123
    iput-object p5, p0, Landroid/media/midi/MidiDevice;->mDeviceToken:Landroid/os/IBinder;

    .line 124
    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method static synthetic access$000(Landroid/media/midi/MidiDevice;)Landroid/media/midi/IMidiDeviceServer;
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiDevice;

    .line 39
    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    return-object v0
.end method

.method private native native_mirrorToNative(Landroid/os/IBinder;I)J
.end method

.method private native native_removeFromNative(J)V
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    monitor-enter v0

    .line 275
    :try_start_0
    iget-boolean v1, p0, Landroid/media/midi/MidiDevice;->mIsDeviceClosed:Z

    if-nez v1, :cond_0

    .line 276
    invoke-virtual {p0}, Landroid/media/midi/MidiDevice;->removeFromNative()V

    .line 277
    iget-object v1, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 278
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/midi/MidiDevice;->mIsDeviceClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :try_start_1
    iget-object v1, p0, Landroid/media/midi/MidiDevice;->mMidiManager:Landroid/media/midi/IMidiManager;

    iget-object v2, p0, Landroid/media/midi/MidiDevice;->mClientToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/media/midi/MidiDevice;->mDeviceToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, v3}, Landroid/media/midi/IMidiManager;->closeDevice(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    goto :goto_0

    .line 281
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "MidiDevice"

    const-string v3, "RemoteException in closeDevice"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 286
    return-void

    .line 285
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public connectPorts(Landroid/media/midi/MidiInputPort;I)Landroid/media/midi/MidiDevice$MidiConnection;
    .locals 5
    .param p1, "inputPort"    # Landroid/media/midi/MidiInputPort;
    .param p2, "outputPortNumber"    # I

    .line 203
    if-ltz p2, :cond_3

    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 206
    iget-boolean v0, p0, Landroid/media/midi/MidiDevice;->mIsDeviceClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 207
    return-object v1

    .line 210
    :cond_0
    invoke-virtual {p1}, Landroid/media/midi/MidiInputPort;->claimFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 211
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-nez v0, :cond_1

    .line 212
    return-object v1

    .line 215
    :cond_1
    :try_start_0
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 216
    .local v2, "token":Landroid/os/IBinder;
    iget-object v3, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-interface {v3, v2, v0, p2}, Landroid/media/midi/IMidiDeviceServer;->connectPorts(Landroid/os/IBinder;Ljava/io/FileDescriptor;I)I

    move-result v3

    .line 221
    .local v3, "calleePid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 223
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 226
    :cond_2
    new-instance v4, Landroid/media/midi/MidiDevice$MidiConnection;

    invoke-direct {v4, p0, v2, p1}, Landroid/media/midi/MidiDevice$MidiConnection;-><init>(Landroid/media/midi/MidiDevice;Landroid/os/IBinder;Landroid/media/midi/MidiInputPort;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 227
    .end local v2    # "token":Landroid/os/IBinder;
    .end local v3    # "calleePid":I
    :catch_0
    move-exception v2

    .line 228
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "MidiDevice"

    const-string v4, "RemoteException in connectPorts"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-object v1

    .line 204
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outputPortNumber out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 291
    :try_start_0
    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 295
    :cond_0
    invoke-virtual {p0}, Landroid/media/midi/MidiDevice;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 298
    nop

    .line 299
    return-void

    .line 297
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getInfo()Landroid/media/midi/MidiDeviceInfo;
    .locals 1

    .line 133
    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    return-object v0
.end method

.method public mirrorToNative()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    iget-boolean v0, p0, Landroid/media/midi/MidiDevice;->mIsDeviceClosed:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_2

    iget-wide v3, p0, Landroid/media/midi/MidiDevice;->mNativeHandle:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-interface {v0}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v3, p0, Landroid/media/midi/MidiDevice;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v3}, Landroid/media/midi/MidiDeviceInfo;->getId()I

    move-result v3

    invoke-direct {p0, v0, v3}, Landroid/media/midi/MidiDevice;->native_mirrorToNative(Landroid/os/IBinder;I)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/media/midi/MidiDevice;->mNativeHandle:J

    .line 243
    iget-wide v3, p0, Landroid/media/midi/MidiDevice;->mNativeHandle:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 247
    sget-object v0, Landroid/media/midi/MidiDevice;->mMirroredDevices:Ljava/util/HashSet;

    monitor-enter v0

    .line 248
    :try_start_0
    sget-object v1, Landroid/media/midi/MidiDevice;->mMirroredDevices:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 249
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    iget-wide v0, p0, Landroid/media/midi/MidiDevice;->mNativeHandle:J

    return-wide v0

    .line 249
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 244
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed mirroring to native"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_2
    :goto_0
    return-wide v1
.end method

.method public openInputPort(I)Landroid/media/midi/MidiInputPort;
    .locals 5
    .param p1, "portNumber"    # I

    .line 148
    iget-boolean v0, p0, Landroid/media/midi/MidiDevice;->mIsDeviceClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 149
    return-object v1

    .line 152
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 153
    .local v0, "token":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-interface {v2, v0, p1}, Landroid/media/midi/IMidiDeviceServer;->openInputPort(Landroid/os/IBinder;I)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 154
    .local v2, "fd":Ljava/io/FileDescriptor;
    if-nez v2, :cond_1

    .line 155
    return-object v1

    .line 157
    :cond_1
    new-instance v3, Landroid/media/midi/MidiInputPort;

    iget-object v4, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-direct {v3, v4, v0, v2, p1}, Landroid/media/midi/MidiInputPort;-><init>(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 158
    .end local v0    # "token":Landroid/os/IBinder;
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MidiDevice"

    const-string v3, "RemoteException in openInputPort"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-object v1
.end method

.method public openOutputPort(I)Landroid/media/midi/MidiOutputPort;
    .locals 5
    .param p1, "portNumber"    # I

    .line 174
    iget-boolean v0, p0, Landroid/media/midi/MidiDevice;->mIsDeviceClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 175
    return-object v1

    .line 178
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 179
    .local v0, "token":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-interface {v2, v0, p1}, Landroid/media/midi/IMidiDeviceServer;->openOutputPort(Landroid/os/IBinder;I)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 180
    .local v2, "fd":Ljava/io/FileDescriptor;
    if-nez v2, :cond_1

    .line 181
    return-object v1

    .line 183
    :cond_1
    new-instance v3, Landroid/media/midi/MidiOutputPort;

    iget-object v4, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-direct {v3, v4, v0, v2, p1}, Landroid/media/midi/MidiOutputPort;-><init>(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 184
    .end local v0    # "token":Landroid/os/IBinder;
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MidiDevice"

    const-string v3, "RemoteException in openOutputPort"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-object v1
.end method

.method public removeFromNative()V
    .locals 6

    .line 258
    iget-wide v0, p0, Landroid/media/midi/MidiDevice;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 259
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    monitor-enter v0

    .line 263
    :try_start_0
    iget-wide v4, p0, Landroid/media/midi/MidiDevice;->mNativeHandle:J

    invoke-direct {p0, v4, v5}, Landroid/media/midi/MidiDevice;->native_removeFromNative(J)V

    .line 264
    iput-wide v2, p0, Landroid/media/midi/MidiDevice;->mNativeHandle:J

    .line 265
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 267
    sget-object v1, Landroid/media/midi/MidiDevice;->mMirroredDevices:Ljava/util/HashSet;

    monitor-enter v1

    .line 268
    :try_start_1
    sget-object v0, Landroid/media/midi/MidiDevice;->mMirroredDevices:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 269
    monitor-exit v1

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 265
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MidiDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/midi/MidiDevice;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v1}, Landroid/media/midi/MidiDeviceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
