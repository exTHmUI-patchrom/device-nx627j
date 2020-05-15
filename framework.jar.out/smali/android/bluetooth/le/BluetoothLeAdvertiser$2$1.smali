.class Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;
.super Ljava/lang/Object;
.source "BluetoothLeAdvertiser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->onAdvertisingSetStarted(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

.field final synthetic val$advertiserId:I

.field final synthetic val$status:I

.field final synthetic val$txPower:I


# direct methods
.method constructor <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;III)V
    .locals 0
    .param p1, "this$1"    # Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    .line 529
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iput p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$status:I

    iput p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$advertiserId:I

    iput p4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$txPower:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 532
    iget v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$status:I

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iget-object v0, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$status:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/le/AdvertisingSetCallback;->onAdvertisingSetStarted(Landroid/bluetooth/le/AdvertisingSet;II)V

    .line 534
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iget-object v0, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$200(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iget-object v1, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    return-void

    .line 538
    :cond_0
    new-instance v0, Landroid/bluetooth/le/AdvertisingSet;

    iget v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$advertiserId:I

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iget-object v2, v2, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 539
    invoke-static {v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$300(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/le/AdvertisingSet;-><init>(ILandroid/bluetooth/IBluetoothManager;)V

    .line 540
    .local v0, "advertisingSet":Landroid/bluetooth/le/AdvertisingSet;
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iget-object v1, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$400(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$advertiserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iget-object v1, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$txPower:I

    iget v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$status:I

    invoke-virtual {v1, v0, v2, v3}, Landroid/bluetooth/le/AdvertisingSetCallback;->onAdvertisingSetStarted(Landroid/bluetooth/le/AdvertisingSet;II)V

    .line 542
    return-void
.end method
