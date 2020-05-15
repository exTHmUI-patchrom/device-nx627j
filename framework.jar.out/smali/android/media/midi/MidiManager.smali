.class public final Landroid/media/midi/MidiManager;
.super Ljava/lang/Object;
.source "MidiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/MidiManager$OnDeviceOpenedListener;,
        Landroid/media/midi/MidiManager$DeviceCallback;,
        Landroid/media/midi/MidiManager$DeviceListener;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.bluetoothmidiservice.BluetoothMidiService"

.field public static final BLUETOOTH_MIDI_SERVICE_INTENT:Ljava/lang/String; = "android.media.midi.BluetoothMidiService"

.field public static final BLUETOOTH_MIDI_SERVICE_PACKAGE:Ljava/lang/String; = "com.android.bluetoothmidiservice"

.field private static final TAG:Ljava/lang/String; = "MidiManager"


# instance fields
.field private mDeviceListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/media/midi/MidiManager$DeviceCallback;",
            "Landroid/media/midi/MidiManager$DeviceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/media/midi/IMidiManager;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/media/midi/IMidiManager;)V
    .locals 1
    .param p1, "service"    # Landroid/media/midi/IMidiManager;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/media/midi/MidiManager;->mDeviceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 166
    iput-object p1, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    .line 167
    return-void
.end method

.method static synthetic access$100(Landroid/media/midi/MidiManager;)Landroid/media/midi/IMidiManager;
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiManager;

    .line 38
    iget-object v0, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/midi/MidiManager;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiManager;

    .line 38
    iget-object v0, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/midi/MidiManager;
    .param p1, "x1"    # Landroid/media/midi/MidiDevice;
    .param p2, "x2"    # Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    .param p3, "x3"    # Landroid/os/Handler;

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/media/midi/MidiManager;->sendOpenDeviceResponse(Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    return-void
.end method

.method private sendOpenDeviceResponse(Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "device"    # Landroid/media/midi/MidiDevice;
    .param p2, "listener"    # Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 225
    if-eqz p3, :cond_0

    .line 226
    new-instance v0, Landroid/media/midi/MidiManager$1;

    invoke-direct {v0, p0, p2, p1}, Landroid/media/midi/MidiManager$1;-><init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/media/midi/MidiDevice;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 232
    :cond_0
    invoke-interface {p2, p1}, Landroid/media/midi/MidiManager$OnDeviceOpenedListener;->onDeviceOpened(Landroid/media/midi/MidiDevice;)V

    .line 234
    :goto_0
    return-void
.end method


# virtual methods
.method public createDeviceServer([Landroid/media/midi/MidiReceiver;I[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;ILandroid/media/midi/MidiDeviceServer$Callback;)Landroid/media/midi/MidiDeviceServer;
    .locals 14
    .param p1, "inputPortReceivers"    # [Landroid/media/midi/MidiReceiver;
    .param p2, "numOutputPorts"    # I
    .param p3, "inputPortNames"    # [Ljava/lang/String;
    .param p4, "outputPortNames"    # [Ljava/lang/String;
    .param p5, "properties"    # Landroid/os/Bundle;
    .param p6, "type"    # I
    .param p7, "callback"    # Landroid/media/midi/MidiDeviceServer$Callback;

    move-object v1, p0

    move-object v2, p1

    .line 316
    :try_start_0
    new-instance v0, Landroid/media/midi/MidiDeviceServer;

    iget-object v3, v1, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v12, p2

    move-object/from16 v13, p7

    :try_start_1
    invoke-direct {v0, v3, v2, v12, v13}, Landroid/media/midi/MidiDeviceServer;-><init>(Landroid/media/midi/IMidiManager;[Landroid/media/midi/MidiReceiver;ILandroid/media/midi/MidiDeviceServer$Callback;)V

    .line 318
    .local v0, "server":Landroid/media/midi/MidiDeviceServer;
    iget-object v4, v1, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceServer;->getBinderInterface()Landroid/media/midi/IMidiDeviceServer;

    move-result-object v5

    array-length v6, v2

    move v7, v12

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    invoke-interface/range {v4 .. v11}, Landroid/media/midi/IMidiManager;->registerDeviceServer(Landroid/media/midi/IMidiDeviceServer;II[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;I)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v3

    .line 321
    .local v3, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    if-nez v3, :cond_0

    .line 322
    const-string v4, "MidiManager"

    const-string/jumbo v5, "registerVirtualDevice failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 323
    const/4 v4, 0x0

    return-object v4

    .line 325
    :cond_0
    return-object v0

    .line 326
    .end local v0    # "server":Landroid/media/midi/MidiDeviceServer;
    .end local v3    # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move/from16 v12, p2

    move-object/from16 v13, p7

    .line 327
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public getDevices()[Landroid/media/midi/MidiDeviceInfo;
    .locals 2

    .line 217
    :try_start_0
    iget-object v0, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    invoke-interface {v0}, Landroid/media/midi/IMidiManager;->getDevices()[Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public openBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    .locals 5
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "listener"    # Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 284
    move-object v0, p2

    .line 285
    .local v0, "listenerF":Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    move-object v1, p3

    .line 287
    .local v1, "handlerF":Landroid/os/Handler;
    new-instance v2, Landroid/media/midi/MidiManager$3;

    invoke-direct {v2, p0, v0, v1}, Landroid/media/midi/MidiManager$3;-><init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    .line 305
    .local v2, "callback":Landroid/media/midi/IMidiDeviceOpenCallback;
    :try_start_0
    iget-object v3, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    iget-object v4, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v3, v4, p1, v2}, Landroid/media/midi/IMidiManager;->openBluetoothDevice(Landroid/os/IBinder;Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    nop

    .line 309
    return-void

    .line 306
    :catch_0
    move-exception v3

    .line 307
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public openDevice(Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    .locals 6
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;
    .param p2, "listener"    # Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 248
    move-object v0, p1

    .line 249
    .local v0, "deviceInfoF":Landroid/media/midi/MidiDeviceInfo;
    move-object v1, p2

    .line 250
    .local v1, "listenerF":Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    move-object v2, p3

    .line 252
    .local v2, "handlerF":Landroid/os/Handler;
    new-instance v3, Landroid/media/midi/MidiManager$2;

    invoke-direct {v3, p0, v0, v1, v2}, Landroid/media/midi/MidiManager$2;-><init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    .line 266
    .local v3, "callback":Landroid/media/midi/IMidiDeviceOpenCallback;
    :try_start_0
    iget-object v4, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    iget-object v5, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v4, v5, p1, v3}, Landroid/media/midi/IMidiManager;->openDevice(Landroid/os/IBinder;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    nop

    .line 270
    return-void

    .line 267
    :catch_0
    move-exception v4

    .line 268
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method public registerDeviceCallback(Landroid/media/midi/MidiManager$DeviceCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/media/midi/MidiManager$DeviceCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 185
    new-instance v0, Landroid/media/midi/MidiManager$DeviceListener;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/midi/MidiManager$DeviceListener;-><init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiManager$DeviceCallback;Landroid/os/Handler;)V

    .line 187
    .local v0, "deviceListener":Landroid/media/midi/MidiManager$DeviceListener;
    :try_start_0
    iget-object v1, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    iget-object v2, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, v0}, Landroid/media/midi/IMidiManager;->registerListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    nop

    .line 191
    iget-object v1, p0, Landroid/media/midi/MidiManager;->mDeviceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-void

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public unregisterDeviceCallback(Landroid/media/midi/MidiManager$DeviceCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/media/midi/MidiManager$DeviceCallback;

    .line 200
    iget-object v0, p0, Landroid/media/midi/MidiManager;->mDeviceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/midi/MidiManager$DeviceListener;

    .line 201
    .local v0, "deviceListener":Landroid/media/midi/MidiManager$DeviceListener;
    if-eqz v0, :cond_0

    .line 203
    :try_start_0
    iget-object v1, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    iget-object v2, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, v0}, Landroid/media/midi/IMidiManager;->unregisterListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 208
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
