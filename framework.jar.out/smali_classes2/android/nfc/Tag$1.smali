.class Landroid/nfc/Tag$1;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/Tag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/nfc/Tag;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/Tag;
    .locals 12
    .param p1, "in"    # Landroid/os/Parcel;

    .line 427
    invoke-static {p1}, Landroid/nfc/Tag;->readBytesWithNull(Landroid/os/Parcel;)[B

    move-result-object v6

    .line 428
    .local v6, "id":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v7, v0, [I

    .line 429
    .local v7, "techList":[I
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readIntArray([I)V

    .line 430
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Landroid/os/Bundle;

    .line 431
    .local v8, "techExtras":[Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 432
    .local v9, "serviceHandle":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 433
    .local v10, "isMock":I
    if-nez v10, :cond_0

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/INfcTag$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcTag;

    move-result-object v0

    .line 437
    .local v5, "tagService":Landroid/nfc/INfcTag;
    :goto_0
    move-object v5, v0

    goto :goto_1

    .end local v5    # "tagService":Landroid/nfc/INfcTag;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 440
    .restart local v5    # "tagService":Landroid/nfc/INfcTag;
    :goto_1
    new-instance v11, Landroid/nfc/Tag;

    move-object v0, v11

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v5}, Landroid/nfc/Tag;-><init>([B[I[Landroid/os/Bundle;ILandroid/nfc/INfcTag;)V

    return-object v11
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 421
    invoke-virtual {p0, p1}, Landroid/nfc/Tag$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/Tag;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/nfc/Tag;
    .locals 1
    .param p1, "size"    # I

    .line 445
    new-array v0, p1, [Landroid/nfc/Tag;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 421
    invoke-virtual {p0, p1}, Landroid/nfc/Tag$1;->newArray(I)[Landroid/nfc/Tag;

    move-result-object p1

    return-object p1
.end method
