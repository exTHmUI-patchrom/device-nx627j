.class public final Landroid/hardware/wifi/supplicant/V1_0/P2pGroupCapabilityMask;
.super Ljava/lang/Object;
.source "P2pGroupCapabilityMask.java"


# static fields
.field public static final CROSS_CONN:I = 0x10

.field public static final GROUP_FORMATION:I = 0x40

.field public static final GROUP_LIMIT:I = 0x4

.field public static final GROUP_OWNER:I = 0x1

.field public static final INTRA_BSS_DIST:I = 0x8

.field public static final PERSISTENT_GROUP:I = 0x2

.field public static final PERSISTENT_RECONN:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 40
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 41
    const-string v2, "GROUP_OWNER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    or-int/lit8 v1, v1, 0x1

    .line 44
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 45
    const-string v2, "PERSISTENT_GROUP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    or-int/lit8 v1, v1, 0x2

    .line 48
    :cond_1
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 49
    const-string v2, "GROUP_LIMIT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    or-int/lit8 v1, v1, 0x4

    .line 52
    :cond_2
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 53
    const-string v2, "INTRA_BSS_DIST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    or-int/lit8 v1, v1, 0x8

    .line 56
    :cond_3
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 57
    const-string v2, "CROSS_CONN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    or-int/lit8 v1, v1, 0x10

    .line 60
    :cond_4
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 61
    const-string v2, "PERSISTENT_RECONN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    or-int/lit8 v1, v1, 0x20

    .line 64
    :cond_5
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 65
    const-string v2, "GROUP_FORMATION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    or-int/lit8 v1, v1, 0x40

    .line 68
    :cond_6
    if-eq p0, v1, :cond_7

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_7
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 13
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 14
    const-string v0, "GROUP_OWNER"

    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 17
    const-string v0, "PERSISTENT_GROUP"

    return-object v0

    .line 19
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 20
    const-string v0, "GROUP_LIMIT"

    return-object v0

    .line 22
    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    .line 23
    const-string v0, "INTRA_BSS_DIST"

    return-object v0

    .line 25
    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    .line 26
    const-string v0, "CROSS_CONN"

    return-object v0

    .line 28
    :cond_4
    const/16 v0, 0x20

    if-ne p0, v0, :cond_5

    .line 29
    const-string v0, "PERSISTENT_RECONN"

    return-object v0

    .line 31
    :cond_5
    const/16 v0, 0x40

    if-ne p0, v0, :cond_6

    .line 32
    const-string v0, "GROUP_FORMATION"

    return-object v0

    .line 34
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
