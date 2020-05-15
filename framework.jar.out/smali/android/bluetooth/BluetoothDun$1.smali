.class Landroid/bluetooth/BluetoothDun$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothDun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDun;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDun;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothDun;

    .line 148
    iput-object p1, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 4
    .param p1, "on"    # Z

    .line 153
    const-string v0, "BluetoothDun"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothStateChange on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    if-eqz p1, :cond_1

    .line 156
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-static {v0}, Landroid/bluetooth/BluetoothDun;->access$000(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/IBluetoothDun;

    move-result-object v0

    if-nez v0, :cond_0

    .line 157
    const-string v0, "BluetoothDun"

    const-string/jumbo v1, "onBluetoothStateChange call bindService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDun;->doBind()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "BluetoothDun"

    const-string/jumbo v2, "onBluetoothStateChange: could not bind to DUN service: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    .end local v0    # "e":Ljava/lang/SecurityException;
    goto :goto_0

    .line 160
    :catch_1
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "BluetoothDun"

    const-string/jumbo v2, "onBluetoothStateChange: could not bind to DUN service: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    :goto_0
    goto :goto_2

    .line 167
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-static {v0}, Landroid/bluetooth/BluetoothDun;->access$100(Landroid/bluetooth/BluetoothDun;)Landroid/content/ServiceConnection;

    move-result-object v0

    monitor-enter v0

    .line 168
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-static {v1}, Landroid/bluetooth/BluetoothDun;->access$000(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/IBluetoothDun;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 170
    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDun;->access$002(Landroid/bluetooth/BluetoothDun;Landroid/bluetooth/IBluetoothDun;)Landroid/bluetooth/IBluetoothDun;

    .line 171
    iget-object v1, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-static {v1}, Landroid/bluetooth/BluetoothDun;->access$200(Landroid/bluetooth/BluetoothDun;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-static {v2}, Landroid/bluetooth/BluetoothDun;->access$100(Landroid/bluetooth/BluetoothDun;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    goto :goto_1

    .line 172
    :catch_2
    move-exception v1

    .line 173
    .local v1, "re":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "BluetoothDun"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    .end local v1    # "re":Ljava/lang/Exception;
    :cond_2
    :goto_1
    monitor-exit v0

    .line 178
    :goto_2
    return-void

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
