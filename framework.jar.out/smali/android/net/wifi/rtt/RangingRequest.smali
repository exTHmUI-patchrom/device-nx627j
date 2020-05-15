.class public final Landroid/net/wifi/rtt/RangingRequest;
.super Ljava/lang/Object;
.source "RangingRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/rtt/RangingRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/rtt/RangingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_PEERS:I = 0xa


# instance fields
.field public final mRttPeers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/rtt/ResponderConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Landroid/net/wifi/rtt/RangingRequest$1;

    invoke-direct {v0}, Landroid/net/wifi/rtt/RangingRequest$1;-><init>()V

    sput-object v0, Landroid/net/wifi/rtt/RangingRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/rtt/ResponderConfig;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p1, "rttPeers":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/rtt/ResponderConfig;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Landroid/net/wifi/rtt/RangingRequest$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Landroid/net/wifi/rtt/RangingRequest$1;

    .line 46
    invoke-direct {p0, p1}, Landroid/net/wifi/rtt/RangingRequest;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static getMaxPeers()I
    .locals 1

    .line 58
    const/16 v0, 0xa

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public enforceValidity(Z)V
    .locals 3
    .param p1, "awareSupported"    # Z

    .line 103
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_2

    .line 108
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/rtt/ResponderConfig;

    .line 109
    .local v1, "peer":Landroid/net/wifi/rtt/ResponderConfig;
    invoke-virtual {v1, p1}, Landroid/net/wifi/rtt/ResponderConfig;->isValid(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    .end local v1    # "peer":Landroid/net/wifi/rtt/ResponderConfig;
    goto :goto_0

    .line 110
    .restart local v1    # "peer":Landroid/net/wifi/rtt/ResponderConfig;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Responder specification"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    .end local v1    # "peer":Landroid/net/wifi/rtt/ResponderConfig;
    :cond_1
    return-void

    .line 104
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ranging to too many peers requested. Use getMaxPeers() API to get limit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 249
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 250
    return v0

    .line 253
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/rtt/RangingRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 254
    return v2

    .line 257
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/rtt/RangingRequest;

    .line 259
    .local v1, "lhs":Landroid/net/wifi/rtt/RangingRequest;
    iget-object v3, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v1, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    iget-object v4, v1, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 264
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 94
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    const-string v2, "RangingRequest: mRttPeers=["

    const-string v3, "]"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 95
    .local v0, "sj":Ljava/util/StringJoiner;
    iget-object v1, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/rtt/ResponderConfig;

    .line 96
    .local v2, "rc":Landroid/net/wifi/rtt/ResponderConfig;
    invoke-virtual {v2}, Landroid/net/wifi/rtt/ResponderConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 97
    .end local v2    # "rc":Landroid/net/wifi/rtt/ResponderConfig;
    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 76
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 77
    return-void
.end method
