.class Landroid/bluetooth/BluetoothBATransmitter$3;
.super Landroid/os/Handler;
.source "BluetoothBATransmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothBATransmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothBATransmitter;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothBATransmitter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothBATransmitter;

    .line 560
    iput-object p1, p0, Landroid/bluetooth/BluetoothBATransmitter$3;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 563
    const-string v0, "BluetoothBAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Handle the message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 566
    :cond_0
    const-string v0, "BluetoothBAT"

    const-string v1, "Reset mBinding flag"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter$3;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->access$400(Landroid/bluetooth/BluetoothBATransmitter;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter$3;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothBATransmitter;->access$402(Landroid/bluetooth/BluetoothBATransmitter;Z)Z

    .line 572
    :cond_1
    :goto_0
    return-void
.end method
