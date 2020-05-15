.class Landroid/bluetooth/BluetoothMap$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothMap;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothMap;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothMap;

    .line 60
    iput-object p1, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 4
    .param p1, "up"    # Z

    .line 62
    const-string v0, "BluetoothMap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothStateChange: up="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    if-nez p1, :cond_0

    .line 65
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->access$000(Landroid/bluetooth/BluetoothMap;)Landroid/content/ServiceConnection;

    move-result-object v0

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothMap;->access$102(Landroid/bluetooth/BluetoothMap;Landroid/bluetooth/IBluetoothMap;)Landroid/bluetooth/IBluetoothMap;

    .line 68
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    invoke-static {v1}, Landroid/bluetooth/BluetoothMap;->access$200(Landroid/bluetooth/BluetoothMap;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    invoke-static {v2}, Landroid/bluetooth/BluetoothMap;->access$000(Landroid/bluetooth/BluetoothMap;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "re":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "BluetoothMap"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .end local v1    # "re":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    goto :goto_3

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 74
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->access$000(Landroid/bluetooth/BluetoothMap;)Landroid/content/ServiceConnection;

    move-result-object v0

    monitor-enter v0

    .line 76
    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    invoke-static {v1}, Landroid/bluetooth/BluetoothMap;->access$100(Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/IBluetoothMap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 78
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothMap;->doBind()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    :cond_1
    goto :goto_2

    .line 83
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 80
    :catch_1
    move-exception v1

    .line 81
    .restart local v1    # "re":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "BluetoothMap"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .end local v1    # "re":Ljava/lang/Exception;
    :goto_2
    monitor-exit v0

    .line 85
    :goto_3
    return-void

    .line 83
    :goto_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
