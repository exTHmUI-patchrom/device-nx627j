.class Landroid/app/LongSnapClientJob$ClientWorkHandler;
.super Landroid/os/Handler;
.source "LongSnapClientJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LongSnapClientJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientWorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/LongSnapClientJob;


# direct methods
.method public constructor <init>(Landroid/app/LongSnapClientJob;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 99
    iput-object p1, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    .line 100
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 101
    return-void
.end method

.method private onNativeMsgPrepareLongSnap(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "nextMsg":Landroid/os/Message;
    iget-object v1, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    invoke-static {v1}, Landroid/app/LongSnapClientJob;->access$1500(Landroid/app/LongSnapClientJob;)V

    .line 186
    iget-object v1, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    invoke-static {v1}, Landroid/app/LongSnapClientJob;->access$1600(Landroid/app/LongSnapClientJob;)V

    .line 187
    return-void
.end method

.method private onRequestLayoutInfo(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 151
    iget-object v0, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    invoke-static {v0}, Landroid/app/LongSnapClientJob;->access$100(Landroid/app/LongSnapClientJob;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 152
    .local v0, "msgPrep":Landroid/os/Message;
    iget-object v1, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    invoke-static {v1}, Landroid/app/LongSnapClientJob;->access$100(Landroid/app/LongSnapClientJob;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 153
    return-void
.end method

.method private onRequestScroll(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "nextMsg":Landroid/os/Message;
    iget-object v1, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    invoke-static {v1}, Landroid/app/LongSnapClientJob;->access$100(Landroid/app/LongSnapClientJob;)Landroid/os/Handler;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    const/16 v4, 0xd5

    invoke-static {v1, v4, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 158
    iget-object v1, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    invoke-static {v1}, Landroid/app/LongSnapClientJob;->access$100(Landroid/app/LongSnapClientJob;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 159
    iget-object v1, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    invoke-static {v1}, Landroid/app/LongSnapClientJob;->access$1000(Landroid/app/LongSnapClientJob;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    iget-object v1, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/app/LongSnapClientJob;->access$1002(Landroid/app/LongSnapClientJob;Z)Z

    .line 161
    iget-object v1, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    invoke-static {v1}, Landroid/app/LongSnapClientJob;->access$1100(Landroid/app/LongSnapClientJob;)V

    .line 163
    :cond_0
    return-void
.end method

.method private onRequestScrollOver(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "nextMsg":Landroid/os/Message;
    iget-object v1, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    invoke-static {v1}, Landroid/app/LongSnapClientJob;->access$100(Landroid/app/LongSnapClientJob;)Landroid/os/Handler;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    const/16 v4, 0xd6

    invoke-static {v1, v4, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 168
    iget-object v1, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    invoke-static {v1}, Landroid/app/LongSnapClientJob;->access$100(Landroid/app/LongSnapClientJob;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 169
    return-void
.end method

.method private onRequestTerminate(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 172
    const-string v0, "gyao"

    const-string/jumbo v1, "onRequestTerminate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    invoke-static {v0}, Landroid/app/LongSnapClientJob;->access$1200(Landroid/app/LongSnapClientJob;)V

    .line 175
    :try_start_0
    iget-object v0, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    invoke-static {v0}, Landroid/app/LongSnapClientJob;->access$1400(Landroid/app/LongSnapClientJob;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    invoke-static {v1}, Landroid/app/LongSnapClientJob;->access$1300(Landroid/app/LongSnapClientJob;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    const-string v1, "gyao"

    const-string/jumbo v2, "onRequestTerminate unbindService happend Exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 138
    :sswitch_0
    iget-object v0, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    invoke-static {v0}, Landroid/app/LongSnapClientJob;->access$900(Landroid/app/LongSnapClientJob;)I

    .line 139
    goto :goto_1

    .line 121
    :sswitch_1
    const-wide/16 v0, -0x1

    .line 122
    .local v0, "startScroll":J
    iget-object v2, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    invoke-static {v2}, Landroid/app/LongSnapClientJob;->access$300(Landroid/app/LongSnapClientJob;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 124
    iget-object v2, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    invoke-static {v2}, Landroid/app/LongSnapClientJob;->access$400(Landroid/app/LongSnapClientJob;)V

    .line 125
    iget-object v2, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    iget-object v3, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    invoke-static {v3}, Landroid/app/LongSnapClientJob;->access$500(Landroid/app/LongSnapClientJob;)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/app/LongSnapClientJob;->access$600(Landroid/app/LongSnapClientJob;Landroid/view/View;)V

    .line 127
    :cond_0
    const/16 v2, 0xd5

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_1

    .line 128
    iget-object v2, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    invoke-static {v2, p1}, Landroid/app/LongSnapClientJob;->access$700(Landroid/app/LongSnapClientJob;Landroid/os/Message;)V

    goto :goto_0

    .line 129
    :cond_1
    const/16 v2, 0xd6

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_2

    .line 130
    iget-object v2, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    invoke-virtual {v2, p1}, Landroid/app/LongSnapClientJob;->sendDragEventOver(Landroid/os/Message;)V

    .line 132
    :cond_2
    :goto_0
    iget-object v2, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    invoke-static {v2}, Landroid/app/LongSnapClientJob;->access$300(Landroid/app/LongSnapClientJob;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    iget-object v2, p0, Landroid/app/LongSnapClientJob$ClientWorkHandler;->this$0:Landroid/app/LongSnapClientJob;

    invoke-static {v2, v0, v1}, Landroid/app/LongSnapClientJob;->access$800(Landroid/app/LongSnapClientJob;J)V

    goto :goto_1

    .line 107
    .end local v0    # "startScroll":J
    :sswitch_2
    invoke-direct {p0, p1}, Landroid/app/LongSnapClientJob$ClientWorkHandler;->onNativeMsgPrepareLongSnap(Landroid/os/Message;)V

    .line 108
    goto :goto_1

    .line 115
    :sswitch_3
    invoke-direct {p0, p1}, Landroid/app/LongSnapClientJob$ClientWorkHandler;->onRequestScrollOver(Landroid/os/Message;)V

    .line 116
    goto :goto_1

    .line 142
    :sswitch_4
    invoke-direct {p0, p1}, Landroid/app/LongSnapClientJob$ClientWorkHandler;->onRequestTerminate(Landroid/os/Message;)V

    .line 143
    goto :goto_1

    .line 111
    :sswitch_5
    invoke-direct {p0, p1}, Landroid/app/LongSnapClientJob$ClientWorkHandler;->onRequestScroll(Landroid/os/Message;)V

    .line 112
    nop

    .line 148
    :cond_3
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_5
        0x6b -> :sswitch_4
        0x6c -> :sswitch_3
        0xc8 -> :sswitch_2
        0xd5 -> :sswitch_1
        0xd6 -> :sswitch_1
        0x12c -> :sswitch_0
    .end sparse-switch
.end method
