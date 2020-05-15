.class Lcom/android/internal/telephony/DeviceStateMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DeviceStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DeviceStateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/DeviceStateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/DeviceStateMonitor;

    .line 136
    iput-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$2;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor$2;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->access$100(Lcom/android/internal/telephony/DeviceStateMonitor;Ljava/lang/String;Z)V

    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v3, -0x6898c375

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eq v1, v3, :cond_3

    const v3, -0x3465cce

    if-eq v1, v3, :cond_2

    const v3, 0x388694fe

    if-eq v1, v3, :cond_1

    const v3, 0x6a0dd473

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v5

    goto :goto_1

    :cond_1
    const-string v1, "android.os.action.CHARGING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_2
    const-string v1, "android.os.action.DISCHARGING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_0

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor$2;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected broadcast intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/internal/telephony/DeviceStateMonitor;->access$100(Lcom/android/internal/telephony/DeviceStateMonitor;Ljava/lang/String;Z)V

    .line 168
    return-void

    .line 157
    :pswitch_0
    const-string v0, "tetherArray"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 160
    .local v0, "activeTetherIfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_5

    .line 161
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v5

    .line 162
    .local v1, "isTetheringOn":Z
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/DeviceStateMonitor$2;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tethering "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_6

    const-string v6, "on"

    goto :goto_3

    :cond_6
    const-string v6, "off"

    :goto_3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->access$100(Lcom/android/internal/telephony/DeviceStateMonitor;Ljava/lang/String;Z)V

    .line 163
    iget-object v3, p0, Lcom/android/internal/telephony/DeviceStateMonitor$2;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/DeviceStateMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 164
    .local v3, "msg":Landroid/os/Message;
    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    move v2, v5

    :goto_4
    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 165
    goto :goto_6

    .line 153
    .end local v0    # "activeTetherIfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "isTetheringOn":Z
    .end local v3    # "msg":Landroid/os/Message;
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor$2;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 154
    .restart local v3    # "msg":Landroid/os/Message;
    iput v5, v3, Landroid/os/Message;->arg1:I

    .line 155
    goto :goto_6

    .line 149
    .end local v3    # "msg":Landroid/os/Message;
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor$2;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 150
    .restart local v3    # "msg":Landroid/os/Message;
    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 151
    goto :goto_6

    .line 144
    .end local v3    # "msg":Landroid/os/Message;
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor$2;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/DeviceStateMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 145
    .restart local v3    # "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor$2;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-static {v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->access$200(Lcom/android/internal/telephony/DeviceStateMonitor;)Z

    move-result v0

    iput v0, v3, Landroid/os/Message;->arg1:I

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor$2;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Power Save mode "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_8

    const-string v4, "on"

    goto :goto_5

    :cond_8
    const-string v4, "off"

    :goto_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->access$100(Lcom/android/internal/telephony/DeviceStateMonitor;Ljava/lang/String;Z)V

    .line 147
    nop

    .line 168
    :goto_6
    move-object v0, v3

    .line 170
    .end local v3    # "msg":Landroid/os/Message;
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$2;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendMessage(Landroid/os/Message;)Z

    .line 171
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
