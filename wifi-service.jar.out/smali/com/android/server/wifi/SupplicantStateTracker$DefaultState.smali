.class Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;
.super Lcom/android/internal/util/State;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/SupplicantStateTracker;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SupplicantStateTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .line 233
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 236
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SupplicantStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .line 240
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SupplicantStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 263
    const-string v0, "SupplicantStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 259
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->access$602(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z

    .line 260
    goto :goto_0

    .line 243
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->access$102(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z

    .line 244
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2}, Lcom/android/server/wifi/SupplicantStateTracker;->access$202(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    .line 245
    goto :goto_0

    .line 247
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wifi/StateChangeResult;

    .line 248
    .local v0, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    iget-object v2, v0, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 249
    .local v2, "state":Landroid/net/wifi/SupplicantState;
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStateTracker;->access$100(Lcom/android/server/wifi/SupplicantStateTracker;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    .line 250
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$200(Lcom/android/server/wifi/SupplicantStateTracker;)I

    move-result v5

    .line 249
    invoke-static {v3, v2, v4, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$300(Lcom/android/server/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;ZI)V

    .line 251
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/wifi/SupplicantStateTracker;->access$102(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z

    .line 252
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {v3, v4}, Lcom/android/server/wifi/SupplicantStateTracker;->access$202(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    .line 253
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {v3, v0}, Lcom/android/server/wifi/SupplicantStateTracker;->access$400(Lcom/android/server/wifi/SupplicantStateTracker;Lcom/android/server/wifi/StateChangeResult;)V

    .line 254
    goto :goto_0

    .line 256
    .end local v0    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    .end local v2    # "state":Landroid/net/wifi/SupplicantState;
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->access$500(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 257
    nop

    .line 266
    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x2006f -> :sswitch_3
        0x24006 -> :sswitch_2
        0x24007 -> :sswitch_1
        0x25001 -> :sswitch_0
    .end sparse-switch
.end method
