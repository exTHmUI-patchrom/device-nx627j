.class Lcom/android/server/wifi/WifiConfigManager$2;
.super Landroid/database/ContentObserver;
.source "WifiConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConfigManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConfigManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 3212
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigManager$2;->this$0:Lcom/android/server/wifi/WifiConfigManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .line 3215
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager$2;->this$0:Lcom/android/server/wifi/WifiConfigManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigManager;->access$000(Lcom/android/server/wifi/WifiConfigManager;)V

    .line 3217
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager$2;->this$0:Lcom/android/server/wifi/WifiConfigManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigManager;->access$100(Lcom/android/server/wifi/WifiConfigManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager$2;->this$0:Lcom/android/server/wifi/WifiConfigManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigManager;->access$200(Lcom/android/server/wifi/WifiConfigManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3218
    :cond_0
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifi latency status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager$2;->this$0:Lcom/android/server/wifi/WifiConfigManager;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConfigManager;->access$300(Lcom/android/server/wifi/WifiConfigManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    :cond_1
    return-void
.end method
