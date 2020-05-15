.class public final Lcom/android/internal/widget/VerifyCredentialResponse;
.super Ljava/lang/Object;
.source "VerifyCredentialResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/widget/VerifyCredentialResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

.field public static final OK:Lcom/android/internal/widget/VerifyCredentialResponse;

.field public static final RESPONSE_ERROR:I = -0x1

.field public static final RESPONSE_OK:I = 0x0

.field public static final RESPONSE_RETRY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VerifyCredentialResponse"


# instance fields
.field private mPayload:[B

.field private mResponseCode:I

.field private mTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>()V

    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 35
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[B)V

    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 43
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse$1;

    invoke-direct {v0}, Lcom/android/internal/widget/VerifyCredentialResponse$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    .line 72
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "timeout"    # I

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    .line 84
    return-void
.end method

.method private constructor <init>(II[B)V
    .locals 0
    .param p1, "responseCode"    # I
    .param p2, "timeout"    # I
    .param p3, "payload"    # [B

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    .line 88
    iput p2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    .line 89
    iput-object p3, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    .line 90
    return-void
.end method

.method synthetic constructor <init>(II[BLcom/android/internal/widget/VerifyCredentialResponse$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # [B
    .param p4, "x3"    # Lcom/android/internal/widget/VerifyCredentialResponse$1;

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "payload"    # [B

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    .line 78
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/VerifyCredentialResponse;
    .param p1, "x1"    # I

    .line 28
    invoke-direct {p0, p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->setTimeout(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/widget/VerifyCredentialResponse;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/VerifyCredentialResponse;
    .param p1, "x1"    # [B

    .line 28
    invoke-direct {p0, p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->setPayload([B)V

    return-void
.end method

.method public static fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 4
    .param p0, "gateKeeperResponse"    # Landroid/service/gatekeeper/GateKeeperResponse;

    .line 139
    invoke-virtual {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v0

    .line 140
    .local v0, "responseCode":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 141
    new-instance v1, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_1

    .line 142
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    if-nez v0, :cond_2

    .line 143
    invoke-virtual {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    .line 144
    .local v1, "token":[B
    if-nez v1, :cond_1

    .line 146
    const-string v2, "VerifyCredentialResponse"

    const-string v3, "verifyChallenge response had no associated payload"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object v2, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .local v2, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    .line 149
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    new-instance v2, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {v2, v1}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    .end local v1    # "token":[B
    .restart local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    move-object v1, v2

    .line 151
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_1

    .line 152
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_2
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 154
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_1
    return-object v1
.end method

.method private setPayload([B)V
    .locals 0
    .param p1, "payload"    # [B

    .line 129
    iput-object p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    .line 130
    return-void
.end method

.method private setTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    .line 125
    iput p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    .line 126
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getPayload()[B
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    return v0
.end method

.method public stripPayload()Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 4

    .line 133
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    iget v1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    iget v2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[B)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 94
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 96
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 97
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    if-nez v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 102
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    :cond_2
    :goto_0
    return-void
.end method
