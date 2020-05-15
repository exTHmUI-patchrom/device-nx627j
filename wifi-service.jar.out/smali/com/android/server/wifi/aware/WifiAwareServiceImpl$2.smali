.class Lcom/android/server/wifi/aware/WifiAwareServiceImpl$2;
.super Ljava/lang/Object;
.source "WifiAwareServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->connect(Landroid/os/IBinder;Ljava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

.field final synthetic val$binder:Landroid/os/IBinder;

.field final synthetic val$clientId:I


# direct methods
.method constructor <init>(Lcom/android/server/wifi/aware/WifiAwareServiceImpl;ILandroid/os/IBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    .line 215
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$2;->this$0:Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    iput p2, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$2;->val$clientId:I

    iput-object p3, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$2;->val$binder:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$2;->this$0:Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    iget-boolean v0, v0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiAwareService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied: clientId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$2;->val$clientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$2;->val$binder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 221
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$2;->this$0:Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->access$200(Lcom/android/server/wifi/aware/WifiAwareServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$2;->this$0:Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->access$300(Lcom/android/server/wifi/aware/WifiAwareServiceImpl;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$2;->val$clientId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 223
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$2;->this$0:Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->access$400(Lcom/android/server/wifi/aware/WifiAwareServiceImpl;)Landroid/util/SparseIntArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$2;->val$clientId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 224
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$2;->this$0:Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->access$500(Lcom/android/server/wifi/aware/WifiAwareServiceImpl;)Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$2;->val$clientId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->disconnect(I)V

    .line 227
    return-void

    .line 224
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
