.class Lcom/android/internal/widget/VerifyCredentialResponse$1;
.super Ljava/lang/Object;
.source "VerifyCredentialResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/VerifyCredentialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/widget/VerifyCredentialResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 48
    .local v0, "responseCode":I
    new-instance v1, Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2, v2}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[BLcom/android/internal/widget/VerifyCredentialResponse$1;)V

    .line 49
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->access$100(Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    goto :goto_0

    .line 51
    :cond_0
    if-nez v0, :cond_1

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 53
    .local v2, "size":I
    if-lez v2, :cond_1

    .line 54
    new-array v3, v2, [B

    .line 55
    .local v3, "payload":[B
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 56
    invoke-static {v1, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->access$200(Lcom/android/internal/widget/VerifyCredentialResponse;[B)V

    .line 59
    .end local v2    # "size":I
    .end local v3    # "payload":[B
    :cond_1
    :goto_0
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/VerifyCredentialResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 1
    .param p1, "size"    # I

    .line 64
    new-array v0, p1, [Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/VerifyCredentialResponse$1;->newArray(I)[Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    return-object p1
.end method
