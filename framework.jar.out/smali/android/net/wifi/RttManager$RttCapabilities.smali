.class public Landroid/net/wifi/RttManager$RttCapabilities;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RttCapabilities"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/RttManager$RttCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bwSupported:I

.field public lciSupported:Z

.field public lcrSupported:Z

.field public mcVersion:I

.field public oneSidedRttSupported:Z

.field public preambleSupported:I

.field public responderSupported:Z

.field public secureRttSupported:Z

.field public supportedPeerType:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public supportedType:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public twoSided11McRttSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 295
    new-instance v0, Landroid/net/wifi/RttManager$RttCapabilities$1;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$RttCapabilities$1;-><init>()V

    sput-object v0, Landroid/net/wifi/RttManager$RttCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 216
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 217
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "oneSidedRtt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->oneSidedRttSupported:Z

    if-eqz v1, :cond_0

    const-string v1, "is Supported. "

    goto :goto_0

    :cond_0
    const-string v1, "is not supported. "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "twoSided11McRtt "

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->twoSided11McRttSupported:Z

    if-eqz v1, :cond_1

    const-string v1, "is Supported. "

    goto :goto_1

    :cond_1
    const-string v1, "is not supported. "

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "lci "

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lciSupported:Z

    if-eqz v1, :cond_2

    const-string v1, "is Supported. "

    goto :goto_2

    :cond_2
    const-string v1, "is not supported. "

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "lcr "

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    if-eqz v1, :cond_3

    const-string v1, "is Supported. "

    goto :goto_3

    :cond_3
    const-string v1, "is not supported. "

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 227
    const-string v1, "Legacy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    :cond_4
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    .line 231
    const-string v1, "HT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    :cond_5
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    .line 235
    const-string v1, "VHT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    :cond_6
    const-string v1, "is supported. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    .line 241
    const-string v1, "5 MHz "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    :cond_7
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    .line 245
    const-string v1, "10 MHz "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    :cond_8
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_9

    .line 249
    const-string v1, "20 MHz "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    :cond_9
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_a

    .line 253
    const-string v1, "40 MHz "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    :cond_a
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_b

    .line 257
    const-string v1, "80 MHz "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    :cond_b
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_c

    .line 261
    const-string v1, "160 MHz "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    :cond_c
    const-string v1, "is supported."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    const-string v1, " STA responder role is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->responderSupported:Z

    if-eqz v1, :cond_d

    const-string/jumbo v1, "supported"

    goto :goto_4

    :cond_d
    const-string/jumbo v1, "not supported"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    const-string v1, " Secure RTT protocol is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->secureRttSupported:Z

    if-eqz v1, :cond_e

    const-string/jumbo v1, "supported"

    goto :goto_5

    :cond_e
    const-string/jumbo v1, "not supported"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " 11mc version is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/RttManager$RttCapabilities;->mcVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 283
    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->oneSidedRttSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->twoSided11McRttSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lciSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->responderSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->secureRttSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->mcVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    return-void
.end method
