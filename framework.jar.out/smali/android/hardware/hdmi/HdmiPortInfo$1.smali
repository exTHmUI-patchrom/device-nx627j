.class Landroid/hardware/hdmi/HdmiPortInfo$1;
.super Ljava/lang/Object;
.source "HdmiPortInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiPortInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/hdmi/HdmiPortInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/hdmi/HdmiPortInfo;
    .locals 11
    .param p1, "source"    # Landroid/os/Parcel;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 134
    .local v7, "id":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 135
    .local v8, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 136
    .local v9, "address":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    .line 137
    .local v4, "cec":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v1

    .line 138
    .local v6, "arc":Z
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v1

    .line 139
    .local v5, "mhl":Z
    :goto_2
    new-instance v10, Landroid/hardware/hdmi/HdmiPortInfo;

    move-object v0, v10

    move v1, v7

    move v2, v8

    move v3, v9

    invoke-direct/range {v0 .. v6}, Landroid/hardware/hdmi/HdmiPortInfo;-><init>(IIIZZZ)V

    return-object v10
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiPortInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/hdmi/HdmiPortInfo;
    .locals 1
    .param p1, "size"    # I

    .line 144
    new-array v0, p1, [Landroid/hardware/hdmi/HdmiPortInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiPortInfo$1;->newArray(I)[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object p1

    return-object p1
.end method
