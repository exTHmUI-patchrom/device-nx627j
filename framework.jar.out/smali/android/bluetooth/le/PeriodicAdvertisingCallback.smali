.class public abstract Landroid/bluetooth/le/PeriodicAdvertisingCallback;
.super Ljava/lang/Object;
.source "PeriodicAdvertisingCallback.java"


# static fields
.field public static final SYNC_NO_RESOURCES:I = 0x2

.field public static final SYNC_NO_RESPONSE:I = 0x1

.field public static final SYNC_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeriodicAdvertisingReport(Landroid/bluetooth/le/PeriodicAdvertisingReport;)V
    .locals 0
    .param p1, "report"    # Landroid/bluetooth/le/PeriodicAdvertisingReport;

    .line 72
    return-void
.end method

.method public onSyncEstablished(ILandroid/bluetooth/BluetoothDevice;IIII)V
    .locals 0
    .param p1, "syncHandle"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "advertisingSid"    # I
    .param p4, "skip"    # I
    .param p5, "timeout"    # I
    .param p6, "status"    # I

    .line 64
    return-void
.end method

.method public onSyncLost(I)V
    .locals 0
    .param p1, "syncHandle"    # I

    .line 80
    return-void
.end method
