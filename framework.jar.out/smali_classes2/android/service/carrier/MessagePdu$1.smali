.class Landroid/service/carrier/MessagePdu$1;
.super Ljava/lang/Object;
.source "MessagePdu.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/MessagePdu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/carrier/MessagePdu;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/carrier/MessagePdu;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 81
    .local v0, "size":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 82
    const/4 v1, 0x0

    .local v1, "pduList":Ljava/util/List;, "Ljava/util/List<[B>;"
    goto :goto_1

    .line 84
    .end local v1    # "pduList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .restart local v1    # "pduList":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .end local v2    # "i":I
    :cond_1
    :goto_1
    new-instance v2, Landroid/service/carrier/MessagePdu;

    invoke-direct {v2, v1}, Landroid/service/carrier/MessagePdu;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Landroid/service/carrier/MessagePdu$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/carrier/MessagePdu;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/carrier/MessagePdu;
    .locals 1
    .param p1, "size"    # I

    .line 94
    new-array v0, p1, [Landroid/service/carrier/MessagePdu;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Landroid/service/carrier/MessagePdu$1;->newArray(I)[Landroid/service/carrier/MessagePdu;

    move-result-object p1

    return-object p1
.end method
