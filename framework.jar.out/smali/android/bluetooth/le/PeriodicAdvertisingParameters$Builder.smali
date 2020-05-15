.class public final Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;
.super Ljava/lang/Object;
.source "PeriodicAdvertisingParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/PeriodicAdvertisingParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mIncludeTxPower:Z

.field private mInterval:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->mIncludeTxPower:Z

    .line 87
    const v0, 0xffef

    iput v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->mInterval:I

    return-void
.end method


# virtual methods
.method public build()Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    .locals 4

    .line 118
    new-instance v0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;

    iget-boolean v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->mIncludeTxPower:Z

    iget v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->mInterval:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/bluetooth/le/PeriodicAdvertisingParameters;-><init>(ZILandroid/bluetooth/le/PeriodicAdvertisingParameters$1;)V

    return-object v0
.end method

.method public setIncludeTxPower(Z)Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;
    .locals 0
    .param p1, "includeTxPower"    # Z

    .line 94
    iput-boolean p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->mIncludeTxPower:Z

    .line 95
    return-object p0
.end method

.method public setInterval(I)Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;
    .locals 2
    .param p1, "interval"    # I

    .line 106
    const/16 v0, 0x50

    if-lt p1, v0, :cond_0

    const v0, 0xffef

    if-gt p1, v0, :cond_0

    .line 110
    iput p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->mInterval:I

    .line 111
    return-object p0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid interval (must be 80-65519)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
