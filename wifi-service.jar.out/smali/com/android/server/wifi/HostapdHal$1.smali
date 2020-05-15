.class Lcom/android/server/wifi/HostapdHal$1;
.super Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.source "HostapdHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/HostapdHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HostapdHal;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HostapdHal;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/HostapdHal;

    .line 63
    iput-object p1, p0, Lcom/android/server/wifi/HostapdHal$1;->this$0:Lcom/android/server/wifi/HostapdHal;

    invoke-direct {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "fqName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "preexisting"    # Z

    .line 65
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal$1;->this$0:Lcom/android/server/wifi/HostapdHal;

    invoke-static {v0}, Lcom/android/server/wifi/HostapdHal;->access$000(Lcom/android/server/wifi/HostapdHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HostapdHal$1;->this$0:Lcom/android/server/wifi/HostapdHal;

    invoke-static {v1}, Lcom/android/server/wifi/HostapdHal;->access$100(Lcom/android/server/wifi/HostapdHal;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const-string v1, "HostapdHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IServiceNotification.onRegistration for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " preexisting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/HostapdHal$1;->this$0:Lcom/android/server/wifi/HostapdHal;

    invoke-static {v1}, Lcom/android/server/wifi/HostapdHal;->access$200(Lcom/android/server/wifi/HostapdHal;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    const-string v1, "HostapdHal"

    const-string v2, "initalizing IHostapd failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v1, p0, Lcom/android/server/wifi/HostapdHal$1;->this$0:Lcom/android/server/wifi/HostapdHal;

    invoke-static {v1}, Lcom/android/server/wifi/HostapdHal;->access$300(Lcom/android/server/wifi/HostapdHal;)V

    goto :goto_0

    .line 74
    :cond_1
    const-string v1, "HostapdHal"

    const-string v2, "Completed initialization of IHostapd."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_0
    monitor-exit v0

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
