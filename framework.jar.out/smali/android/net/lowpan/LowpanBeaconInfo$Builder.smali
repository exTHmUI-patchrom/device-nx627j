.class public Landroid/net/lowpan/LowpanBeaconInfo$Builder;
.super Ljava/lang/Object;
.source "LowpanBeaconInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanBeaconInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field final mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

.field final mIdentityBuilder:Landroid/net/lowpan/LowpanIdentity$Builder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/net/lowpan/LowpanIdentity$Builder;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanIdentity$Builder;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mIdentityBuilder:Landroid/net/lowpan/LowpanIdentity$Builder;

    .line 48
    new-instance v0, Landroid/net/lowpan/LowpanBeaconInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/lowpan/LowpanBeaconInfo;-><init>(Landroid/net/lowpan/LowpanBeaconInfo$1;)V

    iput-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    return-void
.end method


# virtual methods
.method public build()Landroid/net/lowpan/LowpanBeaconInfo;
    .locals 2

    .line 106
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    iget-object v1, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mIdentityBuilder:Landroid/net/lowpan/LowpanIdentity$Builder;

    invoke-virtual {v1}, Landroid/net/lowpan/LowpanIdentity$Builder;->build()Landroid/net/lowpan/LowpanIdentity;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanBeaconInfo;->access$502(Landroid/net/lowpan/LowpanBeaconInfo;Landroid/net/lowpan/LowpanIdentity;)Landroid/net/lowpan/LowpanIdentity;

    .line 107
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    invoke-static {v0}, Landroid/net/lowpan/LowpanBeaconInfo;->access$300(Landroid/net/lowpan/LowpanBeaconInfo;)[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanBeaconInfo;->access$302(Landroid/net/lowpan/LowpanBeaconInfo;[B)[B

    .line 110
    :cond_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    return-object v0
.end method

.method public setBeaconAddress([B)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .locals 2
    .param p1, "x"    # [B

    .line 91
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanBeaconInfo;->access$302(Landroid/net/lowpan/LowpanBeaconInfo;[B)[B

    .line 92
    return-object p0
.end method

.method public setChannel(I)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .locals 1
    .param p1, "x"    # I

    .line 71
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mIdentityBuilder:Landroid/net/lowpan/LowpanIdentity$Builder;

    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanIdentity$Builder;->setChannel(I)Landroid/net/lowpan/LowpanIdentity$Builder;

    .line 72
    return-object p0
.end method

.method public setFlag(I)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .locals 2
    .param p1, "x"    # I

    .line 96
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    invoke-static {v0}, Landroid/net/lowpan/LowpanBeaconInfo;->access$400(Landroid/net/lowpan/LowpanBeaconInfo;)Ljava/util/TreeSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 97
    return-object p0
.end method

.method public setFlags(Ljava/util/Collection;)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/lowpan/LowpanBeaconInfo$Builder;"
        }
    .end annotation

    .line 101
    .local p1, "x":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    invoke-static {v0}, Landroid/net/lowpan/LowpanBeaconInfo;->access$400(Landroid/net/lowpan/LowpanBeaconInfo;)Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 102
    return-object p0
.end method

.method public setLowpanIdentity(Landroid/net/lowpan/LowpanIdentity;)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .locals 1
    .param p1, "x"    # Landroid/net/lowpan/LowpanIdentity;

    .line 51
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mIdentityBuilder:Landroid/net/lowpan/LowpanIdentity$Builder;

    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanIdentity$Builder;->setLowpanIdentity(Landroid/net/lowpan/LowpanIdentity;)Landroid/net/lowpan/LowpanIdentity$Builder;

    .line 52
    return-object p0
.end method

.method public setLqi(I)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .locals 1
    .param p1, "x"    # I

    .line 86
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    invoke-static {v0, p1}, Landroid/net/lowpan/LowpanBeaconInfo;->access$202(Landroid/net/lowpan/LowpanBeaconInfo;I)I

    .line 87
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .locals 1
    .param p1, "x"    # Ljava/lang/String;

    .line 56
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mIdentityBuilder:Landroid/net/lowpan/LowpanIdentity$Builder;

    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanIdentity$Builder;->setName(Ljava/lang/String;)Landroid/net/lowpan/LowpanIdentity$Builder;

    .line 57
    return-object p0
.end method

.method public setPanid(I)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .locals 1
    .param p1, "x"    # I

    .line 66
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mIdentityBuilder:Landroid/net/lowpan/LowpanIdentity$Builder;

    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanIdentity$Builder;->setPanid(I)Landroid/net/lowpan/LowpanIdentity$Builder;

    .line 67
    return-object p0
.end method

.method public setRssi(I)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .locals 1
    .param p1, "x"    # I

    .line 81
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    invoke-static {v0, p1}, Landroid/net/lowpan/LowpanBeaconInfo;->access$102(Landroid/net/lowpan/LowpanBeaconInfo;I)I

    .line 82
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .locals 1
    .param p1, "x"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mIdentityBuilder:Landroid/net/lowpan/LowpanIdentity$Builder;

    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanIdentity$Builder;->setType(Ljava/lang/String;)Landroid/net/lowpan/LowpanIdentity$Builder;

    .line 77
    return-object p0
.end method

.method public setXpanid([B)Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    .locals 1
    .param p1, "x"    # [B

    .line 61
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo$Builder;->mIdentityBuilder:Landroid/net/lowpan/LowpanIdentity$Builder;

    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanIdentity$Builder;->setXpanid([B)Landroid/net/lowpan/LowpanIdentity$Builder;

    .line 62
    return-object p0
.end method
