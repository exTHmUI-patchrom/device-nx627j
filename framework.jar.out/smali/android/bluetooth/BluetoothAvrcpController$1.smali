.class Landroid/bluetooth/BluetoothAvrcpController$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothAvrcpController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAvrcpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothAvrcpController;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAvrcpController;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothAvrcpController;

    .line 88
    iput-object p1, p0, Landroid/bluetooth/BluetoothAvrcpController$1;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 4
    .param p1, "up"    # Z

    .line 91
    if-nez p1, :cond_0

    .line 93
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController$1;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAvrcpController;->access$000(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/content/ServiceConnection;

    move-result-object v0

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController$1;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothAvrcpController;->access$102(Landroid/bluetooth/BluetoothAvrcpController;Landroid/bluetooth/IBluetoothAvrcpController;)Landroid/bluetooth/IBluetoothAvrcpController;

    .line 96
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController$1;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAvrcpController;->access$200(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpController$1;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    invoke-static {v2}, Landroid/bluetooth/BluetoothAvrcpController;->access$000(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    goto :goto_0

    .line 100
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "re":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "BluetoothAvrcpController"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .end local v1    # "re":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    goto :goto_3

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 102
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController$1;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAvrcpController;->access$000(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/content/ServiceConnection;

    move-result-object v0

    monitor-enter v0

    .line 104
    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController$1;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAvrcpController;->access$100(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/IBluetoothAvrcpController;

    move-result-object v1

    if-nez v1, :cond_1

    .line 106
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController$1;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAvrcpController;->doBind()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    :cond_1
    goto :goto_2

    .line 111
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 108
    :catch_1
    move-exception v1

    .line 109
    .restart local v1    # "re":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "BluetoothAvrcpController"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    .end local v1    # "re":Ljava/lang/Exception;
    :goto_2
    monitor-exit v0

    .line 113
    :goto_3
    return-void

    .line 111
    :goto_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
