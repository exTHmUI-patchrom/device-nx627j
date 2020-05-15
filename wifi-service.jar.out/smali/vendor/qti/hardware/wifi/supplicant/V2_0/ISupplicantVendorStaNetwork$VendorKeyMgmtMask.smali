.class public final Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$VendorKeyMgmtMask;
.super Ljava/lang/Object;
.source "ISupplicantVendorStaNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VendorKeyMgmtMask"
.end annotation


# static fields
.field public static final DPP:I = 0x800000

.field public static final FILS_SHA256:I = 0x40000

.field public static final FILS_SHA384:I = 0x80000

.field public static final IEEE8021X_SUITEB:I = 0x10000

.field public static final IEEE8021X_SUITEB_192:I = 0x20000

.field public static final OWE:I = 0x400000

.field public static final SAE:I = 0x400

.field public static final WAPI_CERT:I = 0x2000

.field public static final WAPI_PSK:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 104
    .local v1, "flipped":I
    and-int/lit16 v2, p0, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_0

    .line 105
    const-string v2, "SAE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    or-int/lit16 v1, v1, 0x400

    .line 108
    :cond_0
    and-int/lit16 v2, p0, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_1

    .line 109
    const-string v2, "WAPI_PSK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    or-int/lit16 v1, v1, 0x1000

    .line 112
    :cond_1
    and-int/lit16 v2, p0, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_2

    .line 113
    const-string v2, "WAPI_CERT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    or-int/lit16 v1, v1, 0x2000

    .line 116
    :cond_2
    const/high16 v2, 0x10000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_3

    .line 117
    const-string v3, "IEEE8021X_SUITEB"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    or-int/2addr v1, v2

    .line 120
    :cond_3
    const/high16 v2, 0x20000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_4

    .line 121
    const-string v3, "IEEE8021X_SUITEB_192"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    or-int/2addr v1, v2

    .line 124
    :cond_4
    const/high16 v2, 0x40000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_5

    .line 125
    const-string v3, "FILS_SHA256"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    or-int/2addr v1, v2

    .line 128
    :cond_5
    const/high16 v2, 0x80000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_6

    .line 129
    const-string v3, "FILS_SHA384"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    or-int/2addr v1, v2

    .line 132
    :cond_6
    const/high16 v2, 0x400000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_7

    .line 133
    const-string v3, "OWE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    or-int/2addr v1, v2

    .line 136
    :cond_7
    const/high16 v2, 0x800000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_8

    .line 137
    const-string v3, "DPP"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    or-int/2addr v1, v2

    .line 140
    :cond_8
    if-eq p0, v1, :cond_9

    .line 141
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

    .line 143
    :cond_9
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 71
    const/16 v0, 0x400

    if-ne p0, v0, :cond_0

    .line 72
    const-string v0, "SAE"

    return-object v0

    .line 74
    :cond_0
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_1

    .line 75
    const-string v0, "WAPI_PSK"

    return-object v0

    .line 77
    :cond_1
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_2

    .line 78
    const-string v0, "WAPI_CERT"

    return-object v0

    .line 80
    :cond_2
    const/high16 v0, 0x10000

    if-ne p0, v0, :cond_3

    .line 81
    const-string v0, "IEEE8021X_SUITEB"

    return-object v0

    .line 83
    :cond_3
    const/high16 v0, 0x20000

    if-ne p0, v0, :cond_4

    .line 84
    const-string v0, "IEEE8021X_SUITEB_192"

    return-object v0

    .line 86
    :cond_4
    const/high16 v0, 0x40000

    if-ne p0, v0, :cond_5

    .line 87
    const-string v0, "FILS_SHA256"

    return-object v0

    .line 89
    :cond_5
    const/high16 v0, 0x80000

    if-ne p0, v0, :cond_6

    .line 90
    const-string v0, "FILS_SHA384"

    return-object v0

    .line 92
    :cond_6
    const/high16 v0, 0x400000

    if-ne p0, v0, :cond_7

    .line 93
    const-string v0, "OWE"

    return-object v0

    .line 95
    :cond_7
    const/high16 v0, 0x800000

    if-ne p0, v0, :cond_8

    .line 96
    const-string v0, "DPP"

    return-object v0

    .line 98
    :cond_8
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
