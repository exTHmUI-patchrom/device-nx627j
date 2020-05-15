.class Landroid/bluetooth/le/BluetoothLeAdvertiser$2;
.super Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;
.source "BluetoothLeAdvertiser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/BluetoothLeAdvertiser;->wrap(Landroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IAdvertisingSetCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field final synthetic val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/os/Handler;Landroid/bluetooth/le/AdvertisingSetCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 526
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iput-object p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    invoke-direct {p0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdvertisingDataSet(II)V
    .locals 2
    .param p1, "advertiserId"    # I
    .param p2, "status"    # I

    .line 583
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$5;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$5;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 590
    return-void
.end method

.method public onAdvertisingEnabled(IZI)V
    .locals 2
    .param p1, "advertiserId"    # I
    .param p2, "enabled"    # Z
    .param p3, "status"    # I

    .line 572
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$4;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$4;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;IZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 579
    return-void
.end method

.method public onAdvertisingParametersUpdated(III)V
    .locals 2
    .param p1, "advertiserId"    # I
    .param p2, "txPower"    # I
    .param p3, "status"    # I

    .line 605
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$7;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$7;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 612
    return-void
.end method

.method public onAdvertisingSetStarted(III)V
    .locals 2
    .param p1, "advertiserId"    # I
    .param p2, "txPower"    # I
    .param p3, "status"    # I

    .line 529
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;

    invoke-direct {v1, p0, p3, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 544
    return-void
.end method

.method public onAdvertisingSetStopped(I)V
    .locals 2
    .param p1, "advertiserId"    # I

    .line 559
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$3;

    invoke-direct {v1, p0, p1}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$3;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 568
    return-void
.end method

.method public onOwnAddressRead(IILjava/lang/String;)V
    .locals 2
    .param p1, "advertiserId"    # I
    .param p2, "addressType"    # I
    .param p3, "address"    # Ljava/lang/String;

    .line 548
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$2;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$2;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 555
    return-void
.end method

.method public onPeriodicAdvertisingDataSet(II)V
    .locals 2
    .param p1, "advertiserId"    # I
    .param p2, "status"    # I

    .line 627
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$9;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$9;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 634
    return-void
.end method

.method public onPeriodicAdvertisingEnabled(IZI)V
    .locals 2
    .param p1, "advertiserId"    # I
    .param p2, "enable"    # Z
    .param p3, "status"    # I

    .line 638
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$10;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$10;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;IZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 645
    return-void
.end method

.method public onPeriodicAdvertisingParametersUpdated(II)V
    .locals 2
    .param p1, "advertiserId"    # I
    .param p2, "status"    # I

    .line 616
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$8;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$8;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 623
    return-void
.end method

.method public onScanResponseDataSet(II)V
    .locals 2
    .param p1, "advertiserId"    # I
    .param p2, "status"    # I

    .line 594
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$6;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$6;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 601
    return-void
.end method
