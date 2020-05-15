.class public final Landroid/bluetooth/le/PeriodicAdvertisingParameters;
.super Ljava/lang/Object;
.source "PeriodicAdvertisingParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/PeriodicAdvertisingParameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTERVAL_MAX:I = 0xffef

.field private static final INTERVAL_MIN:I = 0x50


# instance fields
.field private final mIncludeTxPower:Z

.field private final mInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$1;

    invoke-direct {v0}, Landroid/bluetooth/le/PeriodicAdvertisingParameters$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->mIncludeTxPower:Z

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->mInterval:I

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/le/PeriodicAdvertisingParameters$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/bluetooth/le/PeriodicAdvertisingParameters$1;

    .line 27
    invoke-direct {p0, p1}, Landroid/bluetooth/le/PeriodicAdvertisingParameters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(ZI)V
    .locals 0
    .param p1, "includeTxPower"    # Z
    .param p2, "interval"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->mIncludeTxPower:Z

    .line 37
    iput p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->mInterval:I

    .line 38
    return-void
.end method

.method synthetic constructor <init>(ZILandroid/bluetooth/le/PeriodicAdvertisingParameters$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/bluetooth/le/PeriodicAdvertisingParameters$1;

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/PeriodicAdvertisingParameters;-><init>(ZI)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getIncludeTxPower()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->mIncludeTxPower:Z

    return v0
.end method

.method public getInterval()I
    .locals 1

    .line 57
    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->mInterval:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 67
    iget-boolean v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->mIncludeTxPower:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->mInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    return-void
.end method
