.class Landroid/bluetooth/BluetoothHeadset$3;
.super Landroid/os/Handler;
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
.method constructor <init>(Landroid/bluetooth/BluetoothHeadset;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothHeadset;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 1208
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1211
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1220
    :pswitch_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->access$400(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->access$400(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    goto :goto_0

    .line 1213
    :pswitch_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->access$400(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->access$400(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 1226
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
