.class Landroid/nfc/cardemulation/NfcFServiceInfo$1;
.super Ljava/lang/Object;
.source "NfcFServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/NfcFServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/nfc/cardemulation/NfcFServiceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/NfcFServiceInfo;
    .locals 19
    .param p1, "source"    # Landroid/os/Parcel;

    .line 296
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 297
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 298
    .local v11, "description":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 299
    .local v12, "systemCode":Ljava/lang/String;
    const/4 v2, 0x0

    .line 300
    .local v2, "dynamicSystemCode":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 303
    .end local v2    # "dynamicSystemCode":Ljava/lang/String;
    .local v13, "dynamicSystemCode":Ljava/lang/String;
    :cond_0
    move-object v13, v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 304
    .local v14, "nfcid2":Ljava/lang/String;
    const/4 v2, 0x0

    .line 305
    .local v2, "dynamicNfcid2":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 306
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 308
    .end local v2    # "dynamicNfcid2":Ljava/lang/String;
    .local v15, "dynamicNfcid2":Ljava/lang/String;
    :cond_1
    move-object v15, v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 309
    .local v16, "uid":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 310
    .local v17, "t3tPmm":Ljava/lang/String;
    new-instance v18, Landroid/nfc/cardemulation/NfcFServiceInfo;

    move-object/from16 v2, v18

    move-object v3, v0

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    move/from16 v9, v16

    move-object/from16 v10, v17

    invoke-direct/range {v2 .. v10}, Landroid/nfc/cardemulation/NfcFServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 312
    .local v2, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/NfcFServiceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/NfcFServiceInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/nfc/cardemulation/NfcFServiceInfo;
    .locals 1
    .param p1, "size"    # I

    .line 317
    new-array v0, p1, [Landroid/nfc/cardemulation/NfcFServiceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/NfcFServiceInfo$1;->newArray(I)[Landroid/nfc/cardemulation/NfcFServiceInfo;

    move-result-object p1

    return-object p1
.end method
