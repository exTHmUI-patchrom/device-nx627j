.class public final Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$AnqpInfoId;
.super Ljava/lang/Object;
.source "ISupplicantStaIface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnqpInfoId"
.end annotation


# static fields
.field public static final ANQP_3GPP_CELLULAR_NETWORK:S = 0x108s

.field public static final DOMAIN_NAME:S = 0x10cs

.field public static final IP_ADDR_TYPE_AVAILABILITY:S = 0x106s

.field public static final NAI_REALM:S = 0x107s

.field public static final ROAMING_CONSORTIUM:S = 0x105s

.field public static final VENUE_NAME:S = 0x102s


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(S)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # S

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 95
    .local v1, "flipped":S
    and-int/lit16 v2, p0, 0x102

    const/16 v3, 0x102

    if-ne v2, v3, :cond_0

    .line 96
    const-string v2, "VENUE_NAME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    or-int/lit16 v2, v1, 0x102

    int-to-short v1, v2

    .line 99
    :cond_0
    and-int/lit16 v2, p0, 0x105

    const/16 v3, 0x105

    if-ne v2, v3, :cond_1

    .line 100
    const-string v2, "ROAMING_CONSORTIUM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    or-int/lit16 v2, v1, 0x105

    int-to-short v1, v2

    .line 103
    :cond_1
    and-int/lit16 v2, p0, 0x106

    const/16 v3, 0x106

    if-ne v2, v3, :cond_2

    .line 104
    const-string v2, "IP_ADDR_TYPE_AVAILABILITY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    or-int/lit16 v2, v1, 0x106

    int-to-short v1, v2

    .line 107
    :cond_2
    and-int/lit16 v2, p0, 0x107

    const/16 v3, 0x107

    if-ne v2, v3, :cond_3

    .line 108
    const-string v2, "NAI_REALM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    or-int/lit16 v2, v1, 0x107

    int-to-short v1, v2

    .line 111
    :cond_3
    and-int/lit16 v2, p0, 0x108

    const/16 v3, 0x108

    if-ne v2, v3, :cond_4

    .line 112
    const-string v2, "ANQP_3GPP_CELLULAR_NETWORK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    or-int/lit16 v2, v1, 0x108

    int-to-short v1, v2

    .line 115
    :cond_4
    and-int/lit16 v2, p0, 0x10c

    const/16 v3, 0x10c

    if-ne v2, v3, :cond_5

    .line 116
    const-string v2, "DOMAIN_NAME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    or-int/lit16 v2, v1, 0x10c

    int-to-short v1, v2

    .line 119
    :cond_5
    if-eq p0, v1, :cond_6

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    int-to-short v3, v3

    invoke-static {v3}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_6
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(S)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # S

    .line 71
    const/16 v0, 0x102

    if-ne p0, v0, :cond_0

    .line 72
    const-string v0, "VENUE_NAME"

    return-object v0

    .line 74
    :cond_0
    const/16 v0, 0x105

    if-ne p0, v0, :cond_1

    .line 75
    const-string v0, "ROAMING_CONSORTIUM"

    return-object v0

    .line 77
    :cond_1
    const/16 v0, 0x106

    if-ne p0, v0, :cond_2

    .line 78
    const-string v0, "IP_ADDR_TYPE_AVAILABILITY"

    return-object v0

    .line 80
    :cond_2
    const/16 v0, 0x107

    if-ne p0, v0, :cond_3

    .line 81
    const-string v0, "NAI_REALM"

    return-object v0

    .line 83
    :cond_3
    const/16 v0, 0x108

    if-ne p0, v0, :cond_4

    .line 84
    const-string v0, "ANQP_3GPP_CELLULAR_NETWORK"

    return-object v0

    .line 86
    :cond_4
    const/16 v0, 0x10c

    if-ne p0, v0, :cond_5

    .line 87
    const-string v0, "DOMAIN_NAME"

    return-object v0

    .line 89
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
