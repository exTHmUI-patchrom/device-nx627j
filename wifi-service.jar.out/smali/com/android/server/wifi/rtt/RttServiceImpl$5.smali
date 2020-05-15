.class Lcom/android/server/wifi/rtt/RttServiceImpl$5;
.super Ljava/lang/Object;
.source "RttServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/rtt/RttServiceImpl;->startRanging(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/WorkSource;Landroid/net/wifi/rtt/RangingRequest;Landroid/net/wifi/rtt/IRttCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

.field final synthetic val$binder:Landroid/os/IBinder;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/wifi/rtt/RttServiceImpl;ILandroid/os/IBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/rtt/RttServiceImpl;

    .line 438
    iput-object p1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$5;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    iput p2, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$5;->val$uid:I

    iput-object p3, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$5;->val$binder:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$binderDied$0(Lcom/android/server/wifi/rtt/RttServiceImpl$5;I)V
    .locals 2
    .param p1, "uid"    # I

    .line 445
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$5;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$700(Lcom/android/server/wifi/rtt/RttServiceImpl;)Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->access$800(Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;ILandroid/os/WorkSource;)V

    .line 446
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$5;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$100(Lcom/android/server/wifi/rtt/RttServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RttServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied: uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$5;->val$uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$5;->val$binder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 444
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$5;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$700(Lcom/android/server/wifi/rtt/RttServiceImpl;)Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$5;->val$uid:I

    new-instance v2, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$5$I2FdRwlbNnYI33vDhQLuFz17gV4;

    invoke-direct {v2, p0, v1}, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$5$I2FdRwlbNnYI33vDhQLuFz17gV4;-><init>(Lcom/android/server/wifi/rtt/RttServiceImpl$5;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 447
    return-void
.end method
