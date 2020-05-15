.class Landroid/bluetooth/BluetoothHeadset$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothHeadset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHeadset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHeadset;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHeadset;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothHeadset;

    .line 338
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadset$1;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 4
    .param p1, "up"    # Z

    .line 340
    const-string v0, "BluetoothHeadset"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothStateChange: up="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    if-nez p1, :cond_0

    .line 343
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$1;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->doUnbind()V

    goto :goto_1

    .line 345
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$1;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->access$000(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/IBluetoothProfileServiceConnection;

    move-result-object v0

    monitor-enter v0

    .line 347
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset$1;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->access$100(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v1

    if-nez v1, :cond_1

    .line 349
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset$1;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->doBind()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    :cond_1
    goto :goto_0

    .line 354
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 351
    :catch_0
    move-exception v1

    .line 352
    .local v1, "re":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "BluetoothHeadset"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    .end local v1    # "re":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    .line 356
    :goto_1
    return-void

    .line 354
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
