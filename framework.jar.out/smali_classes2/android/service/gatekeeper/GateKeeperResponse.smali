.class public final Landroid/service/gatekeeper/GateKeeperResponse;
.super Ljava/lang/Object;
.source "GateKeeperResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/gatekeeper/GateKeeperResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_ERROR:I = -0x1

.field public static final RESPONSE_OK:I = 0x0

.field public static final RESPONSE_RETRY:I = 0x1


# instance fields
.field private mPayload:[B

.field private final mResponseCode:I

.field private mShouldReEnroll:Z

.field private mTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Landroid/service/gatekeeper/GateKeeperResponse$1;

    invoke-direct {v0}, Landroid/service/gatekeeper/GateKeeperResponse$1;-><init>()V

    sput-object v0, Landroid/service/gatekeeper/GateKeeperResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "responseCode"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    .line 43
    return-void
.end method

.method static synthetic access$000(I)Landroid/service/gatekeeper/GateKeeperResponse;
    .locals 1
    .param p0, "x0"    # I

    .line 28
    invoke-static {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->createRetryResponse(I)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    return-object v0
.end method

.method public static createGenericResponse(I)Landroid/service/gatekeeper/GateKeeperResponse;
    .locals 1
    .param p0, "responseCode"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 47
    new-instance v0, Landroid/service/gatekeeper/GateKeeperResponse;

    invoke-direct {v0, p0}, Landroid/service/gatekeeper/GateKeeperResponse;-><init>(I)V

    return-object v0
.end method

.method public static createOkResponse([BZ)Landroid/service/gatekeeper/GateKeeperResponse;
    .locals 2
    .param p0, "payload"    # [B
    .param p1, "shouldReEnroll"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 58
    new-instance v0, Landroid/service/gatekeeper/GateKeeperResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/service/gatekeeper/GateKeeperResponse;-><init>(I)V

    .line 59
    .local v0, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    iput-object p0, v0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    .line 60
    iput-boolean p1, v0, Landroid/service/gatekeeper/GateKeeperResponse;->mShouldReEnroll:Z

    .line 61
    return-object v0
.end method

.method private static createRetryResponse(I)Landroid/service/gatekeeper/GateKeeperResponse;
    .locals 2
    .param p0, "timeout"    # I

    .line 51
    new-instance v0, Landroid/service/gatekeeper/GateKeeperResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/service/gatekeeper/GateKeeperResponse;-><init>(I)V

    .line 52
    .local v0, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    iput p0, v0, Landroid/service/gatekeeper/GateKeeperResponse;->mTimeout:I

    .line 53
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getPayload()[B
    .locals 1

    .line 116
    iget-object v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 128
    iget v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    return v0
.end method

.method public getShouldReEnroll()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mShouldReEnroll:Z

    return v0
.end method

.method public getTimeout()I
    .locals 1

    .line 120
    iget v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mTimeout:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 101
    iget v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 103
    iget v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 104
    :cond_0
    iget v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    if-nez v0, :cond_2

    .line 105
    iget-boolean v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mShouldReEnroll:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 110
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    :cond_2
    :goto_0
    return-void
.end method
