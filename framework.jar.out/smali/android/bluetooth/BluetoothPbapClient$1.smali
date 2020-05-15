.class Landroid/bluetooth/BluetoothPbapClient$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothPbapClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothPbapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothPbapClient;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothPbapClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothPbapClient;

    .line 59
    iput-object p1, p0, Landroid/bluetooth/BluetoothPbapClient$1;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 4
    .param p1, "up"    # Z

    .line 64
    if-nez p1, :cond_0

    .line 68
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient$1;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothPbapClient;->access$000(Landroid/bluetooth/BluetoothPbapClient;)Landroid/content/ServiceConnection;

    move-result-object v0

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient$1;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothPbapClient;->access$102(Landroid/bluetooth/BluetoothPbapClient;Landroid/bluetooth/IBluetoothPbapClient;)Landroid/bluetooth/IBluetoothPbapClient;

    .line 71
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient$1;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    invoke-static {v1}, Landroid/bluetooth/BluetoothPbapClient;->access$200(Landroid/bluetooth/BluetoothPbapClient;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothPbapClient$1;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    invoke-static {v2}, Landroid/bluetooth/BluetoothPbapClient;->access$000(Landroid/bluetooth/BluetoothPbapClient;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "re":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "BluetoothPbapClient"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .end local v1    # "re":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    goto :goto_3

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 77
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient$1;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothPbapClient;->access$000(Landroid/bluetooth/BluetoothPbapClient;)Landroid/content/ServiceConnection;

    move-result-object v0

    monitor-enter v0

    .line 79
    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient$1;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    invoke-static {v1}, Landroid/bluetooth/BluetoothPbapClient;->access$100(Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/IBluetoothPbapClient;

    move-result-object v1

    if-nez v1, :cond_1

    .line 83
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient$1;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    invoke-static {v1}, Landroid/bluetooth/BluetoothPbapClient;->access$300(Landroid/bluetooth/BluetoothPbapClient;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    :cond_1
    goto :goto_2

    .line 88
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 85
    :catch_1
    move-exception v1

    .line 86
    .restart local v1    # "re":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "BluetoothPbapClient"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .end local v1    # "re":Ljava/lang/Exception;
    :goto_2
    monitor-exit v0

    .line 90
    :goto_3
    return-void

    .line 88
    :goto_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
