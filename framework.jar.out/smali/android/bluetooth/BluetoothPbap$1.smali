.class Landroid/bluetooth/BluetoothPbap$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothPbap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothPbap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothPbap;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothPbap;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothPbap;

    .line 115
    iput-object p1, p0, Landroid/bluetooth/BluetoothPbap$1;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 4
    .param p1, "up"    # Z

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBluetoothStateChange: up="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$000(Ljava/lang/String;)V

    .line 118
    if-nez p1, :cond_0

    .line 119
    const-string v0, "Unbinding service..."

    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$000(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$1;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$100(Landroid/bluetooth/BluetoothPbap;)Landroid/content/ServiceConnection;

    move-result-object v0

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap$1;->this$0:Landroid/bluetooth/BluetoothPbap;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothPbap;->access$202(Landroid/bluetooth/BluetoothPbap;Landroid/bluetooth/IBluetoothPbap;)Landroid/bluetooth/IBluetoothPbap;

    .line 123
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap$1;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-static {v1}, Landroid/bluetooth/BluetoothPbap;->access$300(Landroid/bluetooth/BluetoothPbap;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothPbap$1;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-static {v2}, Landroid/bluetooth/BluetoothPbap;->access$100(Landroid/bluetooth/BluetoothPbap;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    goto :goto_0

    .line 127
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "re":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "BluetoothPbap"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    .end local v1    # "re":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    goto :goto_3

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 129
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$1;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$100(Landroid/bluetooth/BluetoothPbap;)Landroid/content/ServiceConnection;

    move-result-object v0

    monitor-enter v0

    .line 131
    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap$1;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-static {v1}, Landroid/bluetooth/BluetoothPbap;->access$200(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/IBluetoothPbap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 132
    const-string v1, "Binding service..."

    invoke-static {v1}, Landroid/bluetooth/BluetoothPbap;->access$000(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap$1;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothPbap;->doBind()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 137
    :cond_1
    goto :goto_2

    .line 138
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 135
    :catch_1
    move-exception v1

    .line 136
    .restart local v1    # "re":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "BluetoothPbap"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    .end local v1    # "re":Ljava/lang/Exception;
    :goto_2
    monitor-exit v0

    .line 140
    :goto_3
    return-void

    .line 138
    :goto_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
