.class public Landroid/hardware/location/NanoAppFilter;
.super Ljava/lang/Object;
.source "NanoAppFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final APP_ANY:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/NanoAppFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAGS_VERSION_ANY:I = -0x1

.field public static final FLAGS_VERSION_GREAT_THAN:I = 0x2

.field public static final FLAGS_VERSION_LESS_THAN:I = 0x4

.field public static final FLAGS_VERSION_STRICTLY_EQUAL:I = 0x8

.field public static final HUB_ANY:I = -0x1

.field private static final TAG:Ljava/lang/String; = "NanoAppFilter"

.field public static final VENDOR_ANY:I = -0x1


# instance fields
.field private mAppId:J

.field private mAppIdVendorMask:J

.field private mAppVersion:I

.field private mContextHubId:I

.field private mVersionRestrictionMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 142
    new-instance v0, Landroid/hardware/location/NanoAppFilter$1;

    invoke-direct {v0}, Landroid/hardware/location/NanoAppFilter$1;-><init>()V

    sput-object v0, Landroid/hardware/location/NanoAppFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIIJ)V
    .locals 1
    .param p1, "appId"    # J
    .param p3, "appVersion"    # I
    .param p4, "versionMask"    # I
    .param p5, "vendorMask"    # J

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/location/NanoAppFilter;->mContextHubId:I

    .line 111
    iput-wide p1, p0, Landroid/hardware/location/NanoAppFilter;->mAppId:J

    .line 112
    iput p3, p0, Landroid/hardware/location/NanoAppFilter;->mAppVersion:I

    .line 113
    iput p4, p0, Landroid/hardware/location/NanoAppFilter;->mVersionRestrictionMask:I

    .line 114
    iput-wide p5, p0, Landroid/hardware/location/NanoAppFilter;->mAppIdVendorMask:J

    .line 115
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/location/NanoAppFilter;->mContextHubId:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppId:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppVersion:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoAppFilter;->mVersionRestrictionMask:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppIdVendorMask:J

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/location/NanoAppFilter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/hardware/location/NanoAppFilter$1;

    .line 31
    invoke-direct {p0, p1}, Landroid/hardware/location/NanoAppFilter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private versionsMatch(III)Z
    .locals 1
    .param p1, "versionRestrictionMask"    # I
    .param p2, "expected"    # I
    .param p3, "actual"    # I

    .line 119
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public testMatch(Landroid/hardware/location/NanoAppInstanceInfo;)Z
    .locals 4
    .param p1, "info"    # Landroid/hardware/location/NanoAppInstanceInfo;

    .line 129
    iget v0, p0, Landroid/hardware/location/NanoAppFilter;->mContextHubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/location/NanoAppInstanceInfo;->getContexthubId()I

    move-result v0

    iget v1, p0, Landroid/hardware/location/NanoAppFilter;->mContextHubId:I

    if-ne v0, v1, :cond_2

    :cond_0
    iget-wide v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/hardware/location/NanoAppFilter;->mAppId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    :cond_1
    iget v0, p0, Landroid/hardware/location/NanoAppFilter;->mVersionRestrictionMask:I

    iget v1, p0, Landroid/hardware/location/NanoAppFilter;->mAppVersion:I

    .line 131
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppVersion()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/location/NanoAppFilter;->versionsMatch(III)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 129
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "nanoAppId: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/location/NanoAppFilter;->mAppId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nanoAppVersion: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/location/NanoAppFilter;->mAppVersion:I

    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", versionMask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/location/NanoAppFilter;->mVersionRestrictionMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vendorMask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/location/NanoAppFilter;->mAppIdVendorMask:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 96
    iget-wide v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    iget v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Landroid/hardware/location/NanoAppFilter;->mVersionRestrictionMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-wide v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppIdVendorMask:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    return-void
.end method
