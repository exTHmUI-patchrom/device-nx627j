.class public Lcom/android/server/wifi/wificond/RadioChainInfo;
.super Ljava/lang/Object;
.source "RadioChainInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/wifi/wificond/RadioChainInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RadioChainInfo"


# instance fields
.field public chainId:I

.field public level:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Lcom/android/server/wifi/wificond/RadioChainInfo$1;

    invoke-direct {v0}, Lcom/android/server/wifi/wificond/RadioChainInfo$1;-><init>()V

    sput-object v0, Lcom/android/server/wifi/wificond/RadioChainInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "chainId"    # I
    .param p2, "level"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/android/server/wifi/wificond/RadioChainInfo;->chainId:I

    .line 41
    iput p2, p0, Lcom/android/server/wifi/wificond/RadioChainInfo;->level:I

    .line 42
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 47
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 48
    :cond_0
    instance-of v1, p1, Lcom/android/server/wifi/wificond/RadioChainInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 49
    return v2

    .line 51
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/wifi/wificond/RadioChainInfo;

    .line 52
    .local v1, "chainInfo":Lcom/android/server/wifi/wificond/RadioChainInfo;
    if-nez v1, :cond_2

    .line 53
    return v2

    .line 55
    :cond_2
    iget v3, p0, Lcom/android/server/wifi/wificond/RadioChainInfo;->chainId:I

    iget v4, v1, Lcom/android/server/wifi/wificond/RadioChainInfo;->chainId:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/server/wifi/wificond/RadioChainInfo;->level:I

    iget v4, v1, Lcom/android/server/wifi/wificond/RadioChainInfo;->level:I

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/wifi/wificond/RadioChainInfo;->chainId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/wifi/wificond/RadioChainInfo;->level:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 77
    iget v0, p0, Lcom/android/server/wifi/wificond/RadioChainInfo;->chainId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p0, Lcom/android/server/wifi/wificond/RadioChainInfo;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    return-void
.end method
