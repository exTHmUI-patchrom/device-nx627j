.class Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;
.super Landroid/os/Handler;
.source "GsmCdmaConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GsmCdmaConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/GsmCdmaConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/GsmCdmaConnection;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/GsmCdmaConnection;
    .param p2, "l"    # Landroid/os/Looper;

    .line 104
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 110
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 117
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    .line 118
    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->processNextPostDialChar()V

    .line 115
    goto :goto_0

    .line 122
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 123
    invoke-static {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->access$000(Lcom/android/internal/telephony/GsmCdmaConnection;)I

    move-result v2

    int-to-long v2, v2

    .line 122
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 126
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
