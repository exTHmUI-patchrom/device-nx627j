.class public Lorg/codeaurora/ims/QtiVideoCallDataUsage;
.super Ljava/lang/Object;
.source "QtiVideoCallDataUsage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/codeaurora/ims/QtiVideoCallDataUsage;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_USAGE_INVALID_VALUE:I = -0x1

.field public static final DATA_USAGE_LTE:I = 0x0

.field public static final DATA_USAGE_WLAN:I = 0x1

.field private static final TEXT:[Ljava/lang/String;


# instance fields
.field private mDataUsage:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    const-string v0, "LteDataUsage = "

    const-string v1, " WlanDataUsage = "

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->TEXT:[Ljava/lang/String;

    .line 89
    new-instance v0, Lorg/codeaurora/ims/QtiVideoCallDataUsage$1;

    invoke-direct {v0}, Lorg/codeaurora/ims/QtiVideoCallDataUsage$1;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->readFromParcel(Landroid/os/Parcel;)V

    .line 57
    return-void
.end method

.method public constructor <init>([J)V
    .locals 1
    .param p1, "dUsage"    # [J

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 52
    iput-object p1, p0, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->mDataUsage:[J

    .line 53
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public getLteDataUsage()J
    .locals 2

    .line 63
    iget-object v0, p0, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->mDataUsage:[J

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->mDataUsage:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    goto :goto_0

    .line 64
    :cond_0
    const-wide/16 v0, -0x1

    .line 63
    :goto_0
    return-wide v0
.end method

.method public getWlanDataUsage()J
    .locals 2

    .line 71
    iget-object v0, p0, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->mDataUsage:[J

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->mDataUsage:[J

    aget-wide v0, v0, v1

    goto :goto_0

    .line 72
    :cond_0
    const-wide/16 v0, -0x1

    .line 71
    :goto_0
    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->mDataUsage:[J

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 104
    iget-object v0, p0, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->mDataUsage:[J

    if-eqz v0, :cond_1

    .line 105
    const-string v0, ""

    .line 106
    .local v0, "msg":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->mDataUsage:[J

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->TEXT:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->mDataUsage:[J

    aget-wide v3, v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 111
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .line 77
    iget-object v0, p0, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->mDataUsage:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 78
    return-void
.end method
