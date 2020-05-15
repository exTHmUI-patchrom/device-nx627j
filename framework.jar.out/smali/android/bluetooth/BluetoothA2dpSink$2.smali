.class Landroid/bluetooth/BluetoothA2dpSink$2;
.super Ljava/lang/Object;
.source "BluetoothA2dpSink.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothA2dpSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothA2dpSink;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothA2dpSink;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothA2dpSink;

    .line 488
    iput-object p1, p0, Landroid/bluetooth/BluetoothA2dpSink$2;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 490
    const-string v0, "BluetoothA2dpSink"

    const-string v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink$2;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothA2dpSink;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothA2dpSink;->access$102(Landroid/bluetooth/BluetoothA2dpSink;Landroid/bluetooth/IBluetoothA2dpSink;)Landroid/bluetooth/IBluetoothA2dpSink;

    .line 492
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink$2;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dpSink;->access$300(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink$2;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dpSink;->access$300(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0xb

    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink$2;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 496
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 499
    const-string v0, "BluetoothA2dpSink"

    const-string v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink$2;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothA2dpSink;->access$102(Landroid/bluetooth/BluetoothA2dpSink;Landroid/bluetooth/IBluetoothA2dpSink;)Landroid/bluetooth/IBluetoothA2dpSink;

    .line 501
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink$2;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dpSink;->access$300(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink$2;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dpSink;->access$300(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 504
    :cond_0
    return-void
.end method
