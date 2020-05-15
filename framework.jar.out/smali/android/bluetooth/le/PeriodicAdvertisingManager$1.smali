.class Landroid/bluetooth/le/PeriodicAdvertisingManager$1;
.super Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;
.source "PeriodicAdvertisingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/PeriodicAdvertisingManager;->wrap(Landroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/le/PeriodicAdvertisingManager;

.field final synthetic val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/bluetooth/le/PeriodicAdvertisingManager;Landroid/os/Handler;Landroid/bluetooth/le/PeriodicAdvertisingCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/le/PeriodicAdvertisingManager;

    .line 201
    iput-object p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->this$0:Landroid/bluetooth/le/PeriodicAdvertisingManager;

    iput-object p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    invoke-direct {p0}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeriodicAdvertisingReport(Landroid/bluetooth/le/PeriodicAdvertisingReport;)V
    .locals 2
    .param p1, "report"    # Landroid/bluetooth/le/PeriodicAdvertisingReport;

    .line 223
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$2;

    invoke-direct {v1, p0, p1}, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$2;-><init>(Landroid/bluetooth/le/PeriodicAdvertisingManager$1;Landroid/bluetooth/le/PeriodicAdvertisingReport;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    return-void
.end method

.method public onSyncEstablished(ILandroid/bluetooth/BluetoothDevice;IIII)V
    .locals 11
    .param p1, "syncHandle"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "advertisingSid"    # I
    .param p4, "skip"    # I
    .param p5, "timeout"    # I
    .param p6, "status"    # I

    .line 205
    move-object v8, p0

    iget-object v9, v8, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$handler:Landroid/os/Handler;

    new-instance v10, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;

    move-object v0, v10

    move-object v1, v8

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;-><init>(Landroid/bluetooth/le/PeriodicAdvertisingManager$1;ILandroid/bluetooth/BluetoothDevice;IIII)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    return-void
.end method

.method public onSyncLost(I)V
    .locals 2
    .param p1, "syncHandle"    # I

    .line 232
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$3;

    invoke-direct {v1, p0, p1}, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$3;-><init>(Landroid/bluetooth/le/PeriodicAdvertisingManager$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    return-void
.end method
