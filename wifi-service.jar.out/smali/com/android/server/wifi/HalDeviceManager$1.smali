.class Lcom/android/server/wifi/HalDeviceManager$1;
.super Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.source "HalDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/HalDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HalDeviceManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HalDeviceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/HalDeviceManager;

    .line 610
    iput-object p1, p0, Lcom/android/server/wifi/HalDeviceManager$1;->this$0:Lcom/android/server/wifi/HalDeviceManager;

    invoke-direct {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "fqName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "preexisting"    # Z

    .line 614
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IWifi registration notification: fqName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", preexisting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager$1;->this$0:Lcom/android/server/wifi/HalDeviceManager;

    invoke-static {v0}, Lcom/android/server/wifi/HalDeviceManager;->access$200(Lcom/android/server/wifi/HalDeviceManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 617
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager$1;->this$0:Lcom/android/server/wifi/HalDeviceManager;

    invoke-static {v1}, Lcom/android/server/wifi/HalDeviceManager;->access$300(Lcom/android/server/wifi/HalDeviceManager;)V

    .line 618
    monitor-exit v0

    .line 619
    return-void

    .line 618
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
