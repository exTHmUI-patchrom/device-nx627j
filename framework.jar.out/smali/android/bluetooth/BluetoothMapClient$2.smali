.class Landroid/bluetooth/BluetoothMapClient$2;
.super Ljava/lang/Object;
.source "BluetoothMapClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 396
    iput-object p1, p0, Landroid/bluetooth/BluetoothMapClient$2;->this$0:Landroid/bluetooth/BluetoothMapClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 398
    invoke-static {}, Landroid/bluetooth/BluetoothMapClient;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMapClient"

    const-string v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient$2;->this$0:Landroid/bluetooth/BluetoothMapClient;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothMapClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothMapClient;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothMapClient;->access$302(Landroid/bluetooth/BluetoothMapClient;Landroid/bluetooth/IBluetoothMapClient;)Landroid/bluetooth/IBluetoothMapClient;

    .line 400
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient$2;->this$0:Landroid/bluetooth/BluetoothMapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothMapClient;->access$500(Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient$2;->this$0:Landroid/bluetooth/BluetoothMapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothMapClient;->access$500(Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0x12

    iget-object v2, p0, Landroid/bluetooth/BluetoothMapClient$2;->this$0:Landroid/bluetooth/BluetoothMapClient;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 404
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 407
    invoke-static {}, Landroid/bluetooth/BluetoothMapClient;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMapClient"

    const-string v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient$2;->this$0:Landroid/bluetooth/BluetoothMapClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothMapClient;->access$302(Landroid/bluetooth/BluetoothMapClient;Landroid/bluetooth/IBluetoothMapClient;)Landroid/bluetooth/IBluetoothMapClient;

    .line 409
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient$2;->this$0:Landroid/bluetooth/BluetoothMapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothMapClient;->access$500(Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient$2;->this$0:Landroid/bluetooth/BluetoothMapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothMapClient;->access$500(Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 412
    :cond_1
    return-void
.end method
