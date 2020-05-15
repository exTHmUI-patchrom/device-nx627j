.class Landroid/media/AudioManager$NativeEventHandlerDelegate$1;
.super Landroid/os/Handler;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioManager$NativeEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/AudioManager$NativeEventHandlerDelegate;

.field final synthetic val$callback:Landroid/media/AudioDeviceCallback;

.field final synthetic val$this$0:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager$NativeEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioManager;Landroid/media/AudioDeviceCallback;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/AudioManager$NativeEventHandlerDelegate;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 5188
    iput-object p1, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$NativeEventHandlerDelegate;

    iput-object p3, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;->val$this$0:Landroid/media/AudioManager;

    iput-object p4, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;->val$callback:Landroid/media/AudioDeviceCallback;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 5191
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 5211
    const-string v0, "AudioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown native event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5207
    :pswitch_0
    iget-object v0, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$NativeEventHandlerDelegate;

    iget-object v0, v0, Landroid/media/AudioManager$NativeEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$NativeEventHandlerDelegate;

    invoke-static {v1}, Landroid/media/AudioManager$NativeEventHandlerDelegate;->access$1600(Landroid/media/AudioManager$NativeEventHandlerDelegate;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/AudioManager;->access$1200(Landroid/media/AudioManager;Landroid/os/Handler;)V

    .line 5208
    goto :goto_0

    .line 5200
    :pswitch_1
    iget-object v0, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;->val$callback:Landroid/media/AudioDeviceCallback;

    if-eqz v0, :cond_0

    .line 5201
    iget-object v0, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;->val$callback:Landroid/media/AudioDeviceCallback;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/media/AudioDeviceInfo;

    invoke-virtual {v0, v1}, Landroid/media/AudioDeviceCallback;->onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V

    goto :goto_0

    .line 5194
    :pswitch_2
    iget-object v0, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;->val$callback:Landroid/media/AudioDeviceCallback;

    if-eqz v0, :cond_0

    .line 5195
    iget-object v0, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;->val$callback:Landroid/media/AudioDeviceCallback;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/media/AudioDeviceInfo;

    invoke-virtual {v0, v1}, Landroid/media/AudioDeviceCallback;->onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V

    .line 5214
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
