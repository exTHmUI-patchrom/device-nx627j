.class Landroid/bluetooth/BluetoothHidHost$2;
.super Ljava/lang/Object;
.source "BluetoothHidHost.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHidHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHidHost;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHidHost;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothHidHost;

    .line 506
    iput-object p1, p0, Landroid/bluetooth/BluetoothHidHost$2;->this$0:Landroid/bluetooth/BluetoothHidHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 508
    const-string v0, "BluetoothHidHost"

    const-string v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost$2;->this$0:Landroid/bluetooth/BluetoothHidHost;

    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothHidHost$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHidHost;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidHost;->access$102(Landroid/bluetooth/BluetoothHidHost;Landroid/bluetooth/IBluetoothHidHost;)Landroid/bluetooth/IBluetoothHidHost;

    .line 511
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost$2;->this$0:Landroid/bluetooth/BluetoothHidHost;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHidHost;->access$300(Landroid/bluetooth/BluetoothHidHost;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost$2;->this$0:Landroid/bluetooth/BluetoothHidHost;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHidHost;->access$300(Landroid/bluetooth/BluetoothHidHost;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Landroid/bluetooth/BluetoothHidHost$2;->this$0:Landroid/bluetooth/BluetoothHidHost;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 515
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 518
    const-string v0, "BluetoothHidHost"

    const-string v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost$2;->this$0:Landroid/bluetooth/BluetoothHidHost;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidHost;->access$102(Landroid/bluetooth/BluetoothHidHost;Landroid/bluetooth/IBluetoothHidHost;)Landroid/bluetooth/IBluetoothHidHost;

    .line 520
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost$2;->this$0:Landroid/bluetooth/BluetoothHidHost;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHidHost;->access$300(Landroid/bluetooth/BluetoothHidHost;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost$2;->this$0:Landroid/bluetooth/BluetoothHidHost;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHidHost;->access$300(Landroid/bluetooth/BluetoothHidHost;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 523
    :cond_0
    return-void
.end method
