.class Lcom/android/server/wifi/WifiController$QcStaDisablingState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QcStaDisablingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    .line 783
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$QcStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 786
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$QcStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "QcStaDisablingState.enter()"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$4500(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 787
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 791
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x2601e

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 805
    const/4 v0, 0x0

    return v0

    .line 794
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$QcStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "In QcStaDisablingState, deferMessage"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$4600(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$QcStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiController;->deferMessage(Landroid/os/Message;)V

    .line 796
    goto :goto_0

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$QcStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$QcStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1800(Lcom/android/server/wifi/WifiController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 799
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$QcStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$QcStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$1900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$QcStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$QcStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 803
    nop

    .line 808
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x26008
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
