.class Landroid/media/midi/MidiDeviceServer$2;
.super Ljava/lang/Object;
.source "MidiDeviceServer.java"

# interfaces
.implements Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/midi/MidiDeviceServer;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiDeviceServer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/midi/MidiDeviceServer;

    .line 357
    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer$2;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiverFailure(Landroid/media/midi/MidiReceiver;Ljava/io/IOException;)V
    .locals 3
    .param p1, "receiver"    # Landroid/media/midi/MidiReceiver;
    .param p2, "failure"    # Ljava/io/IOException;

    .line 359
    const-string v0, "MidiDeviceServer"

    const-string v1, "MidiInputPort failed to send data"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, "client":Landroid/media/midi/MidiDeviceServer$PortClient;
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$2;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->access$1200(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 362
    :try_start_0
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$2;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->access$1200(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/midi/MidiDeviceServer$PortClient;

    move-object v0, v2

    .line 363
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceServer$PortClient;->close()V

    .line 367
    :cond_0
    return-void

    .line 363
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
