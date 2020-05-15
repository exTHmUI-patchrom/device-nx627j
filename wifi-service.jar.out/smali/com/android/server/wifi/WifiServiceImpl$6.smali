.class Lcom/android/server/wifi/WifiServiceImpl$6;
.super Ljava/lang/Object;
.source "WifiServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;->registerSoftApCallback(Landroid/os/IBinder;Landroid/net/wifi/ISoftApCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;

.field final synthetic val$binder:Landroid/os/IBinder;

.field final synthetic val$callbackIdentifier:I


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 1454
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->val$binder:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->val$callbackIdentifier:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$binderDied$0(Lcom/android/server/wifi/WifiServiceImpl$6;I)V
    .locals 4
    .param p1, "callbackIdentifier"    # I

    .line 1464
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$1500(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1467
    goto :goto_0

    .line 1465
    :catch_0
    move-exception v0

    .line 1466
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "binderDied: remove -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 1457
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->val$binder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1458
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$1800(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->val$callbackIdentifier:I

    new-instance v2, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$6$MdfiljgJkYiMTSnjrpnqCjNoQWc;

    invoke-direct {v2, p0, v1}, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$6$MdfiljgJkYiMTSnjrpnqCjNoQWc;-><init>(Lcom/android/server/wifi/WifiServiceImpl$6;I)V

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->post(Ljava/lang/Runnable;)Z

    .line 1470
    return-void
.end method
