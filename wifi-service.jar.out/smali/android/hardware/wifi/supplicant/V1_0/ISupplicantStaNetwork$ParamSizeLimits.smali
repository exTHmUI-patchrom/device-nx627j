.class public final Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$ParamSizeLimits;
.super Ljava/lang/Object;
.source "ISupplicantStaNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParamSizeLimits"
.end annotation


# static fields
.field public static final PSK_PASSPHRASE_MAX_LEN_IN_BYTES:I = 0x3f

.field public static final PSK_PASSPHRASE_MIN_LEN_IN_BYTES:I = 0x8

.field public static final SSID_MAX_LEN_IN_BYTES:I = 0x20

.field public static final WEP104_KEY_LEN_IN_BYTES:I = 0xd

.field public static final WEP40_KEY_LEN_IN_BYTES:I = 0x5

.field public static final WEP_KEYS_MAX_NUM:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 106
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 107
    const-string v2, "SSID_MAX_LEN_IN_BYTES"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    or-int/lit8 v1, v1, 0x20

    .line 110
    :cond_0
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 111
    const-string v2, "PSK_PASSPHRASE_MIN_LEN_IN_BYTES"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    or-int/lit8 v1, v1, 0x8

    .line 114
    :cond_1
    and-int/lit8 v2, p0, 0x3f

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_2

    .line 115
    const-string v2, "PSK_PASSPHRASE_MAX_LEN_IN_BYTES"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    or-int/lit8 v1, v1, 0x3f

    .line 118
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 119
    const-string v2, "WEP_KEYS_MAX_NUM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    or-int/lit8 v1, v1, 0x4

    .line 122
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 123
    const-string v2, "WEP40_KEY_LEN_IN_BYTES"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    or-int/lit8 v1, v1, 0x5

    .line 126
    :cond_4
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_5

    .line 127
    const-string v2, "WEP104_KEY_LEN_IN_BYTES"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    or-int/lit8 v1, v1, 0xd

    .line 130
    :cond_5
    if-eq p0, v1, :cond_6

    .line 131
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

    .line 133
    :cond_6
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 82
    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    .line 83
    const-string v0, "SSID_MAX_LEN_IN_BYTES"

    return-object v0

    .line 85
    :cond_0
    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    .line 86
    const-string v0, "PSK_PASSPHRASE_MIN_LEN_IN_BYTES"

    return-object v0

    .line 88
    :cond_1
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_2

    .line 89
    const-string v0, "PSK_PASSPHRASE_MAX_LEN_IN_BYTES"

    return-object v0

    .line 91
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 92
    const-string v0, "WEP_KEYS_MAX_NUM"

    return-object v0

    .line 94
    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    .line 95
    const-string v0, "WEP40_KEY_LEN_IN_BYTES"

    return-object v0

    .line 97
    :cond_4
    const/16 v0, 0xd

    if-ne p0, v0, :cond_5

    .line 98
    const-string v0, "WEP104_KEY_LEN_IN_BYTES"

    return-object v0

    .line 100
    :cond_5
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
