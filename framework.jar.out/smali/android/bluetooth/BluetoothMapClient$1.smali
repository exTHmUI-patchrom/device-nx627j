.class Landroid/bluetooth/BluetoothMapClient$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothMapClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothMapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothMapClient;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothMapClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothMapClient;

    .line 76
    iput-object p1, p0, Landroid/bluetooth/BluetoothMapClient$1;->this$0:Landroid/bluetooth/BluetoothMapClient;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 4
    .param p1, "up"    # Z

    .line 78
    invoke-static {}, Landroid/bluetooth/BluetoothMapClient;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMapClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothStateChange: up="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    if-nez p1, :cond_2

    .line 80
    invoke-static {}, Landroid/bluetooth/BluetoothMapClient;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BluetoothMapClient"

    const-string v1, "Unbinding service..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient$1;->this$0:Landroid/bluetooth/BluetoothMapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothMapClient;->access$200(Landroid/bluetooth/BluetoothMapClient;)Landroid/content/ServiceConnection;

    move-result-object v0

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient$1;->this$0:Landroid/bluetooth/BluetoothMapClient;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothMapClient;->access$302(Landroid/bluetooth/BluetoothMapClient;Landroid/bluetooth/IBluetoothMapClient;)Landroid/bluetooth/IBluetoothMapClient;

    .line 84
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient$1;->this$0:Landroid/bluetooth/BluetoothMapClient;

    invoke-static {v1}, Landroid/bluetooth/BluetoothMapClient;->access$400(Landroid/bluetooth/BluetoothMapClient;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothMapClient$1;->this$0:Landroid/bluetooth/BluetoothMapClient;

    invoke-static {v2}, Landroid/bluetooth/BluetoothMapClient;->access$200(Landroid/bluetooth/BluetoothMapClient;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "re":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "BluetoothMapClient"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .end local v1    # "re":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    goto :goto_3

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 90
    :cond_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient$1;->this$0:Landroid/bluetooth/BluetoothMapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothMapClient;->access$200(Landroid/bluetooth/BluetoothMapClient;)Landroid/content/ServiceConnection;

    move-result-object v0

    monitor-enter v0

    .line 92
    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient$1;->this$0:Landroid/bluetooth/BluetoothMapClient;

    invoke-static {v1}, Landroid/bluetooth/BluetoothMapClient;->access$300(Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/IBluetoothMapClient;

    move-result-object v1

    if-nez v1, :cond_4

    .line 93
    invoke-static {}, Landroid/bluetooth/BluetoothMapClient;->access$100()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "BluetoothMapClient"

    const-string v2, "Binding service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient$1;->this$0:Landroid/bluetooth/BluetoothMapClient;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothMapClient;->doBind()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 98
    :cond_4
    goto :goto_2

    .line 99
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 96
    :catch_1
    move-exception v1

    .line 97
    .restart local v1    # "re":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "BluetoothMapClient"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .end local v1    # "re":Ljava/lang/Exception;
    :goto_2
    monitor-exit v0

    .line 101
    :goto_3
    return-void

    .line 99
    :goto_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
