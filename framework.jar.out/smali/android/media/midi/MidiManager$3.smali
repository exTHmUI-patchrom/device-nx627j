.class Landroid/media/midi/MidiManager$3;
.super Landroid/media/midi/IMidiDeviceOpenCallback$Stub;
.source "MidiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/midi/MidiManager;->openBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/midi/MidiManager;

.field final synthetic val$handlerF:Landroid/os/Handler;

.field final synthetic val$listenerF:Landroid/media/midi/MidiManager$OnDeviceOpenedListener;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/midi/MidiManager;

    .line 287
    iput-object p1, p0, Landroid/media/midi/MidiManager$3;->this$0:Landroid/media/midi/MidiManager;

    iput-object p2, p0, Landroid/media/midi/MidiManager$3;->val$listenerF:Landroid/media/midi/MidiManager$OnDeviceOpenedListener;

    iput-object p3, p0, Landroid/media/midi/MidiManager$3;->val$handlerF:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/media/midi/IMidiDeviceOpenCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceOpened(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "deviceToken"    # Landroid/os/IBinder;

    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "device":Landroid/media/midi/MidiDevice;
    if-eqz p1, :cond_0

    .line 294
    :try_start_0
    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v2

    .line 295
    .local v2, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    new-instance v7, Landroid/media/midi/MidiDevice;

    iget-object v1, p0, Landroid/media/midi/MidiManager$3;->this$0:Landroid/media/midi/MidiManager;

    invoke-static {v1}, Landroid/media/midi/MidiManager;->access$100(Landroid/media/midi/MidiManager;)Landroid/media/midi/IMidiManager;

    move-result-object v4

    iget-object v1, p0, Landroid/media/midi/MidiManager$3;->this$0:Landroid/media/midi/MidiManager;

    invoke-static {v1}, Landroid/media/midi/MidiManager;->access$200(Landroid/media/midi/MidiManager;)Landroid/os/IBinder;

    move-result-object v5

    move-object v1, v7

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/media/midi/MidiDevice;-><init>(Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/IMidiManager;Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    .line 298
    .end local v2    # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    goto :goto_0

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MidiManager"

    const-string/jumbo v3, "remote exception in getDeviceInfo()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/media/midi/MidiManager$3;->this$0:Landroid/media/midi/MidiManager;

    iget-object v2, p0, Landroid/media/midi/MidiManager$3;->val$listenerF:Landroid/media/midi/MidiManager$OnDeviceOpenedListener;

    iget-object v3, p0, Landroid/media/midi/MidiManager$3;->val$handlerF:Landroid/os/Handler;

    invoke-static {v1, v0, v2, v3}, Landroid/media/midi/MidiManager;->access$300(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    .line 301
    return-void
.end method
