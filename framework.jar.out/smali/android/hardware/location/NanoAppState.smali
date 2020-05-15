.class public final Landroid/hardware/location/NanoAppState;
.super Ljava/lang/Object;
.source "NanoAppState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/NanoAppState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsEnabled:Z

.field private mNanoAppId:J

.field private mNanoAppVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Landroid/hardware/location/NanoAppState$1;

    invoke-direct {v0}, Landroid/hardware/location/NanoAppState$1;-><init>()V

    sput-object v0, Landroid/hardware/location/NanoAppState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIZ)V
    .locals 0
    .param p1, "nanoAppId"    # J
    .param p3, "appVersion"    # I
    .param p4, "enabled"    # Z

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Landroid/hardware/location/NanoAppState;->mNanoAppId:J

    .line 35
    iput p3, p0, Landroid/hardware/location/NanoAppState;->mNanoAppVersion:I

    .line 36
    iput-boolean p4, p0, Landroid/hardware/location/NanoAppState;->mIsEnabled:Z

    .line 37
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppId:J

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppVersion:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/hardware/location/NanoAppState;->mIsEnabled:Z

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/location/NanoAppState$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/hardware/location/NanoAppState$1;

    .line 28
    invoke-direct {p0, p1}, Landroid/hardware/location/NanoAppState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public getNanoAppId()J
    .locals 2

    .line 43
    iget-wide v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppId:J

    return-wide v0
.end method

.method public getNanoAppVersion()J
    .locals 2

    .line 50
    iget v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppVersion:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Landroid/hardware/location/NanoAppState;->mIsEnabled:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 73
    iget-wide v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    iget v0, p0, Landroid/hardware/location/NanoAppState;->mNanoAppVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-boolean v0, p0, Landroid/hardware/location/NanoAppState;->mIsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    return-void
.end method
