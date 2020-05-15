.class public Landroid/net/NetworkRequest;
.super Ljava/lang/Object;
.source "NetworkRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkRequest$Builder;,
        Landroid/net/NetworkRequest$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final legacyType:I

.field public final networkCapabilities:Landroid/net/NetworkCapabilities;

.field public final requestId:I

.field public final type:Landroid/net/NetworkRequest$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 358
    new-instance v0, Landroid/net/NetworkRequest$1;

    invoke-direct {v0}, Landroid/net/NetworkRequest$1;-><init>()V

    sput-object v0, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V
    .locals 1
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;
    .param p2, "legacyType"    # I
    .param p3, "rId"    # I
    .param p4, "type"    # Landroid/net/NetworkRequest$Type;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    if-eqz p1, :cond_0

    .line 118
    iput p3, p0, Landroid/net/NetworkRequest;->requestId:I

    .line 119
    iput-object p1, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 120
    iput p2, p0, Landroid/net/NetworkRequest;->legacyType:I

    .line 121
    iput-object p4, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    .line 122
    return-void

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Landroid/net/NetworkRequest;)V
    .locals 2
    .param p1, "that"    # Landroid/net/NetworkRequest;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Landroid/net/NetworkCapabilities;

    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    iput-object v0, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 129
    iget v0, p1, Landroid/net/NetworkRequest;->requestId:I

    iput v0, p0, Landroid/net/NetworkRequest;->requestId:I

    .line 130
    iget v0, p1, Landroid/net/NetworkRequest;->legacyType:I

    iput v0, p0, Landroid/net/NetworkRequest;->legacyType:I

    .line 131
    iget-object v0, p1, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    iput-object v0, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    .line 132
    return-void
.end method

.method private typeToProtoEnum(Landroid/net/NetworkRequest$Type;)I
    .locals 2
    .param p1, "t"    # Landroid/net/NetworkRequest$Type;

    .line 458
    sget-object v0, Landroid/net/NetworkRequest$2;->$SwitchMap$android$net$NetworkRequest$Type:[I

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 470
    const/4 v0, 0x0

    return v0

    .line 468
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 466
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 464
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 462
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 460
    :pswitch_4
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 487
    instance-of v0, p1, Landroid/net/NetworkRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 488
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/NetworkRequest;

    .line 489
    .local v0, "that":Landroid/net/NetworkRequest;
    iget v2, v0, Landroid/net/NetworkRequest;->legacyType:I

    iget v3, p0, Landroid/net/NetworkRequest;->legacyType:I

    if-ne v2, v3, :cond_1

    iget v2, v0, Landroid/net/NetworkRequest;->requestId:I

    iget v3, p0, Landroid/net/NetworkRequest;->requestId:I

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    iget-object v3, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v3, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 492
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    .line 489
    :cond_1
    return v1
.end method

.method public hasCapability(I)Z
    .locals 1
    .param p1, "capability"    # I

    .line 432
    iget-object v0, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    return v0
.end method

.method public hasTransport(I)Z
    .locals 1
    .param p1, "transportType"    # I

    .line 448
    iget-object v0, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    return v0
.end method

.method public hasUnwantedCapability(I)Z
    .locals 1
    .param p1, "capability"    # I

    .line 441
    iget-object v0, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->hasUnwantedCapability(I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 496
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/NetworkRequest;->legacyType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isBackgroundRequest()Z
    .locals 2

    .line 425
    iget-object v0, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    sget-object v1, Landroid/net/NetworkRequest$Type;->BACKGROUND_REQUEST:Landroid/net/NetworkRequest$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isForegroundRequest()Z
    .locals 2

    .line 416
    iget-object v0, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    sget-object v1, Landroid/net/NetworkRequest$Type;->TRACK_DEFAULT:Landroid/net/NetworkRequest$Type;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    sget-object v1, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isListen()Z
    .locals 2

    .line 379
    iget-object v0, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    sget-object v1, Landroid/net/NetworkRequest$Type;->LISTEN:Landroid/net/NetworkRequest$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRequest()Z
    .locals 1

    .line 398
    invoke-virtual {p0}, Landroid/net/NetworkRequest;->isForegroundRequest()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkRequest;->isBackgroundRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkRequest [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 453
    iget v1, p0, Landroid/net/NetworkRequest;->legacyType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", legacyType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/NetworkRequest;->legacyType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 454
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 452
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 353
    iget-object v0, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1, p2}, Landroid/net/NetworkCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    .line 354
    iget v0, p0, Landroid/net/NetworkRequest;->legacyType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    iget v0, p0, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    iget-object v0, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 476
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 478
    .local v0, "token":J
    iget-object v2, p0, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    invoke-direct {p0, v2}, Landroid/net/NetworkRequest;->typeToProtoEnum(Landroid/net/NetworkRequest$Type;)I

    move-result v2

    const-wide v3, 0x10e00000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 479
    iget v2, p0, Landroid/net/NetworkRequest;->requestId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 480
    iget v2, p0, Landroid/net/NetworkRequest;->legacyType:I

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 481
    iget-object v2, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/net/NetworkCapabilities;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 483
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 484
    return-void
.end method
