.class public Landroid/net/wifi/aware/PeerHandle;
.super Ljava/lang/Object;
.source "PeerHandle.java"


# instance fields
.field public peerId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "peerId"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 47
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 48
    return v0

    .line 51
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/aware/PeerHandle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 52
    return v2

    .line 55
    :cond_1
    iget v1, p0, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    move-object v3, p1

    check-cast v3, Landroid/net/wifi/aware/PeerHandle;

    iget v3, v3, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 60
    iget v0, p0, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    return v0
.end method
