.class public final Landroid/app/usage/AppStandbyInfo;
.super Ljava/lang/Object;
.source "AppStandbyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mPackageName:Ljava/lang/String;

.field public mStandbyBucket:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Landroid/app/usage/AppStandbyInfo$1;

    invoke-direct {v0}, Landroid/app/usage/AppStandbyInfo$1;-><init>()V

    sput-object v0, Landroid/app/usage/AppStandbyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/usage/AppStandbyInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/usage/AppStandbyInfo$1;

    .line 27
    invoke-direct {p0, p1}, Landroid/app/usage/AppStandbyInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "bucket"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    .line 39
    iput p2, p0, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 49
    iget-object v0, p0, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget v0, p0, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    return-void
.end method
