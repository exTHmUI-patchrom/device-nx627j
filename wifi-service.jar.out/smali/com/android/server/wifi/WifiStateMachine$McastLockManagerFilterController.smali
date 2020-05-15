.class Lcom/android/server/wifi/WifiStateMachine$McastLockManagerFilterController;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Lcom/android/server/wifi/WifiMulticastLockManager$FilterController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "McastLockManagerFilterController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 1085
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$McastLockManagerFilterController;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startFilteringMulticastPackets()V
    .locals 2

    .line 1090
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$McastLockManagerFilterController;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$McastLockManagerFilterController;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpClient;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpClient;->setMulticastFilter(Z)V

    .line 1093
    :cond_0
    return-void
.end method

.method public stopFilteringMulticastPackets()V
    .locals 2

    .line 1099
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$McastLockManagerFilterController;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$McastLockManagerFilterController;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ip/IpClient;->setMulticastFilter(Z)V

    .line 1102
    :cond_0
    return-void
.end method
