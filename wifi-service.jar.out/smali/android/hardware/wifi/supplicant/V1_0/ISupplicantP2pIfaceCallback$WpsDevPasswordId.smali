.class public final Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$WpsDevPasswordId;
.super Ljava/lang/Object;
.source "ISupplicantP2pIfaceCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WpsDevPasswordId"
.end annotation


# static fields
.field public static final DEFAULT:S = 0x0s

.field public static final MACHINE_SPECIFIED:S = 0x2s

.field public static final NFC_CONNECTION_HANDOVER:S = 0x7s

.field public static final P2PS_DEFAULT:S = 0x8s

.field public static final PUSHBUTTON:S = 0x4s

.field public static final REGISTRAR_SPECIFIED:S = 0x5s

.field public static final REKEY:S = 0x3s

.field public static final USER_SPECIFIED:S = 0x1s


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(S)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # S

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 106
    .local v1, "flipped":S
    const-string v2, "DEFAULT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 108
    const-string v2, "USER_SPECIFIED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    or-int/lit8 v2, v1, 0x1

    int-to-short v1, v2

    .line 111
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 112
    const-string v2, "MACHINE_SPECIFIED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    or-int/lit8 v2, v1, 0x2

    int-to-short v1, v2

    .line 115
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 116
    const-string v2, "REKEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    or-int/lit8 v2, v1, 0x3

    int-to-short v1, v2

    .line 119
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 120
    const-string v2, "PUSHBUTTON"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    or-int/lit8 v2, v1, 0x4

    int-to-short v1, v2

    .line 123
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 124
    const-string v2, "REGISTRAR_SPECIFIED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    or-int/lit8 v2, v1, 0x5

    int-to-short v1, v2

    .line 127
    :cond_4
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5

    .line 128
    const-string v2, "NFC_CONNECTION_HANDOVER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    or-int/lit8 v2, v1, 0x7

    int-to-short v1, v2

    .line 131
    :cond_5
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6

    .line 132
    const-string v2, "P2PS_DEFAULT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    or-int/lit8 v2, v1, 0x8

    int-to-short v1, v2

    .line 135
    :cond_6
    if-eq p0, v1, :cond_7

    .line 136
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

    .line 138
    :cond_7
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(S)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # S

    .line 76
    if-nez p0, :cond_0

    .line 77
    const-string v0, "DEFAULT"

    return-object v0

    .line 79
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 80
    const-string v0, "USER_SPECIFIED"

    return-object v0

    .line 82
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 83
    const-string v0, "MACHINE_SPECIFIED"

    return-object v0

    .line 85
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 86
    const-string v0, "REKEY"

    return-object v0

    .line 88
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 89
    const-string v0, "PUSHBUTTON"

    return-object v0

    .line 91
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 92
    const-string v0, "REGISTRAR_SPECIFIED"

    return-object v0

    .line 94
    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    .line 95
    const-string v0, "NFC_CONNECTION_HANDOVER"

    return-object v0

    .line 97
    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    .line 98
    const-string v0, "P2PS_DEFAULT"

    return-object v0

    .line 100
    :cond_7
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
