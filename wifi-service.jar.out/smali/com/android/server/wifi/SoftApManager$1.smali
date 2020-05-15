.class Lcom/android/server/wifi/SoftApManager$1;
.super Ljava/lang/Object;
.source "SoftApManager.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNative$SoftApListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/SoftApManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SoftApManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/SoftApManager;

    .line 105
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$1;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNumAssociatedStationsChanged(I)V
    .locals 2
    .param p1, "numStations"    # I

    .line 108
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$1;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessage(II)V

    .line 110
    return-void
.end method

.method public onSoftApChannelSwitched(II)V
    .locals 2
    .param p1, "frequency"    # I
    .param p2, "bandwidth"    # I

    .line 114
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$1;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessage(III)V

    .line 116
    return-void
.end method

.method public onStaConnected(Ljava/lang/String;)V
    .locals 2
    .param p1, "Macaddr"    # Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$1;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 122
    return-void
.end method

.method public onStaDisconnected(Ljava/lang/String;)V
    .locals 2
    .param p1, "Macaddr"    # Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$1;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 128
    return-void
.end method
