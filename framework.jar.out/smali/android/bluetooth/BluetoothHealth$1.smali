.class Landroid/bluetooth/BluetoothHealth$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothHealth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHealth;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHealth;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothHealth;

    .line 101
    iput-object p1, p0, Landroid/bluetooth/BluetoothHealth$1;->this$0:Landroid/bluetooth/BluetoothHealth;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 4
    .param p1, "up"    # Z

    .line 103
    const-string v0, "BluetoothHealth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothStateChange: up="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-nez p1, :cond_0

    .line 106
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth$1;->this$0:Landroid/bluetooth/BluetoothHealth;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHealth;->access$000(Landroid/bluetooth/BluetoothHealth;)Landroid/content/ServiceConnection;

    move-result-object v0

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth$1;->this$0:Landroid/bluetooth/BluetoothHealth;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothHealth;->access$102(Landroid/bluetooth/BluetoothHealth;Landroid/bluetooth/IBluetoothHealth;)Landroid/bluetooth/IBluetoothHealth;

    .line 109
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth$1;->this$0:Landroid/bluetooth/BluetoothHealth;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHealth;->access$200(Landroid/bluetooth/BluetoothHealth;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothHealth$1;->this$0:Landroid/bluetooth/BluetoothHealth;

    invoke-static {v2}, Landroid/bluetooth/BluetoothHealth;->access$000(Landroid/bluetooth/BluetoothHealth;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    goto :goto_0

    .line 113
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "re":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "BluetoothHealth"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    .end local v1    # "re":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    goto :goto_3

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 115
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth$1;->this$0:Landroid/bluetooth/BluetoothHealth;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHealth;->access$000(Landroid/bluetooth/BluetoothHealth;)Landroid/content/ServiceConnection;

    move-result-object v0

    monitor-enter v0

    .line 117
    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth$1;->this$0:Landroid/bluetooth/BluetoothHealth;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHealth;->access$100(Landroid/bluetooth/BluetoothHealth;)Landroid/bluetooth/IBluetoothHealth;

    move-result-object v1

    if-nez v1, :cond_1

    .line 119
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth$1;->this$0:Landroid/bluetooth/BluetoothHealth;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHealth;->doBind()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    :cond_1
    goto :goto_2

    .line 124
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 121
    :catch_1
    move-exception v1

    .line 122
    .restart local v1    # "re":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "BluetoothHealth"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .end local v1    # "re":Ljava/lang/Exception;
    :goto_2
    monitor-exit v0

    .line 126
    :goto_3
    return-void

    .line 124
    :goto_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
