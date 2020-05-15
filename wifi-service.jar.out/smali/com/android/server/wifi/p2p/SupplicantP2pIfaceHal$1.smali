.class Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$1;
.super Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.source "SupplicantP2pIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    .line 90
    iput-object p1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$1;->this$0:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-direct {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "fqName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "preexisting"    # Z

    .line 92
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$1;->this$0:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->access$000(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 94
    :try_start_0
    const-string v1, "SupplicantP2pIfaceHal"

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

    .line 97
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$1;->this$0:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-static {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->access$100(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v2, "initalizing ISupplicant failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$1;->this$0:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-static {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->access$200(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;)V

    goto :goto_0

    .line 101
    :cond_0
    const-string v1, "SupplicantP2pIfaceHal"

    const-string v2, "Completed initialization of ISupplicant interfaces."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_0
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
