.class Landroid/bluetooth/BluetoothPbapClient$2;
.super Ljava/lang/Object;
.source "BluetoothPbapClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 293
    iput-object p1, p0, Landroid/bluetooth/BluetoothPbapClient$2;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 298
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient$2;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothPbapClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPbapClient;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothPbapClient;->access$102(Landroid/bluetooth/BluetoothPbapClient;Landroid/bluetooth/IBluetoothPbapClient;)Landroid/bluetooth/IBluetoothPbapClient;

    .line 299
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient$2;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothPbapClient;->access$400(Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient$2;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothPbapClient;->access$400(Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0x11

    iget-object v2, p0, Landroid/bluetooth/BluetoothPbapClient$2;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 303
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 309
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient$2;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothPbapClient;->access$102(Landroid/bluetooth/BluetoothPbapClient;Landroid/bluetooth/IBluetoothPbapClient;)Landroid/bluetooth/IBluetoothPbapClient;

    .line 310
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient$2;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothPbapClient;->access$400(Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient$2;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothPbapClient;->access$400(Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0x11

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 313
    :cond_0
    return-void
.end method
