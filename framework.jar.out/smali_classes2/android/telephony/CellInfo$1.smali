.class Landroid/telephony/CellInfo$1;
.super Ljava/lang/Object;
.source "CellInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/CellInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellInfo;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 258
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 263
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bad CellInfo Parcel"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :pswitch_0
    invoke-static {p1}, Landroid/telephony/CellInfoWcdma;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoWcdma;

    move-result-object v1

    return-object v1

    .line 261
    :pswitch_1
    invoke-static {p1}, Landroid/telephony/CellInfoLte;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoLte;

    move-result-object v1

    return-object v1

    .line 260
    :pswitch_2
    invoke-static {p1}, Landroid/telephony/CellInfoCdma;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoCdma;

    move-result-object v1

    return-object v1

    .line 259
    :pswitch_3
    invoke-static {p1}, Landroid/telephony/CellInfoGsm;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoGsm;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 254
    invoke-virtual {p0, p1}, Landroid/telephony/CellInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/CellInfo;
    .locals 1
    .param p1, "size"    # I

    .line 269
    new-array v0, p1, [Landroid/telephony/CellInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 254
    invoke-virtual {p0, p1}, Landroid/telephony/CellInfo$1;->newArray(I)[Landroid/telephony/CellInfo;

    move-result-object p1

    return-object p1
.end method
