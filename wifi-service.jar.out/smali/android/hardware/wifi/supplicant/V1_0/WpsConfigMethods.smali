.class public final Landroid/hardware/wifi/supplicant/V1_0/WpsConfigMethods;
.super Ljava/lang/Object;
.source "WpsConfigMethods.java"


# static fields
.field public static final DISPLAY:S = 0x8s

.field public static final ETHERNET:S = 0x2s

.field public static final EXT_NFC_TOKEN:S = 0x10s

.field public static final INT_NFC_TOKEN:S = 0x20s

.field public static final KEYPAD:S = 0x100s

.field public static final LABEL:S = 0x4s

.field public static final NFC_INTERFACE:S = 0x40s

.field public static final P2PS:S = 0x1000s

.field public static final PHY_DISPLAY:S = 0x4008s

.field public static final PHY_PUSHBUTTON:S = 0x480s

.field public static final PUSHBUTTON:S = 0x80s

.field public static final USBA:S = 0x1s

.field public static final VIRT_DISPLAY:S = 0x2008s

.field public static final VIRT_PUSHBUTTON:S = 0x280s


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(S)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # S

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 68
    .local v1, "flipped":S
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 69
    const-string v2, "USBA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    or-int/lit8 v2, v1, 0x1

    int-to-short v1, v2

    .line 72
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 73
    const-string v2, "ETHERNET"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    or-int/lit8 v2, v1, 0x2

    int-to-short v1, v2

    .line 76
    :cond_1
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 77
    const-string v2, "LABEL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    or-int/lit8 v2, v1, 0x4

    int-to-short v1, v2

    .line 80
    :cond_2
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 81
    const-string v2, "DISPLAY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    or-int/lit8 v2, v1, 0x8

    int-to-short v1, v2

    .line 84
    :cond_3
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 85
    const-string v2, "EXT_NFC_TOKEN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    or-int/lit8 v2, v1, 0x10

    int-to-short v1, v2

    .line 88
    :cond_4
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 89
    const-string v2, "INT_NFC_TOKEN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    or-int/lit8 v2, v1, 0x20

    int-to-short v1, v2

    .line 92
    :cond_5
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 93
    const-string v2, "NFC_INTERFACE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    or-int/lit8 v2, v1, 0x40

    int-to-short v1, v2

    .line 96
    :cond_6
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    .line 97
    const-string v2, "PUSHBUTTON"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-int/lit16 v2, v1, 0x80

    int-to-short v1, v2

    .line 100
    :cond_7
    and-int/lit16 v2, p0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_8

    .line 101
    const-string v2, "KEYPAD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-int/lit16 v2, v1, 0x100

    int-to-short v1, v2

    .line 104
    :cond_8
    and-int/lit16 v2, p0, 0x280

    const/16 v3, 0x280

    if-ne v2, v3, :cond_9

    .line 105
    const-string v2, "VIRT_PUSHBUTTON"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    or-int/lit16 v2, v1, 0x280

    int-to-short v1, v2

    .line 108
    :cond_9
    and-int/lit16 v2, p0, 0x480

    const/16 v3, 0x480

    if-ne v2, v3, :cond_a

    .line 109
    const-string v2, "PHY_PUSHBUTTON"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    or-int/lit16 v2, v1, 0x480

    int-to-short v1, v2

    .line 112
    :cond_a
    and-int/lit16 v2, p0, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_b

    .line 113
    const-string v2, "P2PS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    or-int/lit16 v2, v1, 0x1000

    int-to-short v1, v2

    .line 116
    :cond_b
    and-int/lit16 v2, p0, 0x2008

    const/16 v3, 0x2008

    if-ne v2, v3, :cond_c

    .line 117
    const-string v2, "VIRT_DISPLAY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    or-int/lit16 v2, v1, 0x2008

    int-to-short v1, v2

    .line 120
    :cond_c
    and-int/lit16 v2, p0, 0x4008

    const/16 v3, 0x4008

    if-ne v2, v3, :cond_d

    .line 121
    const-string v2, "PHY_DISPLAY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    or-int/lit16 v2, v1, 0x4008

    int-to-short v1, v2

    .line 124
    :cond_d
    if-eq p0, v1, :cond_e

    .line 125
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

    .line 127
    :cond_e
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(S)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # S

    .line 20
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 21
    const-string v0, "USBA"

    return-object v0

    .line 23
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 24
    const-string v0, "ETHERNET"

    return-object v0

    .line 26
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 27
    const-string v0, "LABEL"

    return-object v0

    .line 29
    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    .line 30
    const-string v0, "DISPLAY"

    return-object v0

    .line 32
    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    .line 33
    const-string v0, "EXT_NFC_TOKEN"

    return-object v0

    .line 35
    :cond_4
    const/16 v0, 0x20

    if-ne p0, v0, :cond_5

    .line 36
    const-string v0, "INT_NFC_TOKEN"

    return-object v0

    .line 38
    :cond_5
    const/16 v0, 0x40

    if-ne p0, v0, :cond_6

    .line 39
    const-string v0, "NFC_INTERFACE"

    return-object v0

    .line 41
    :cond_6
    const/16 v0, 0x80

    if-ne p0, v0, :cond_7

    .line 42
    const-string v0, "PUSHBUTTON"

    return-object v0

    .line 44
    :cond_7
    const/16 v0, 0x100

    if-ne p0, v0, :cond_8

    .line 45
    const-string v0, "KEYPAD"

    return-object v0

    .line 47
    :cond_8
    const/16 v0, 0x280

    if-ne p0, v0, :cond_9

    .line 48
    const-string v0, "VIRT_PUSHBUTTON"

    return-object v0

    .line 50
    :cond_9
    const/16 v0, 0x480

    if-ne p0, v0, :cond_a

    .line 51
    const-string v0, "PHY_PUSHBUTTON"

    return-object v0

    .line 53
    :cond_a
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_b

    .line 54
    const-string v0, "P2PS"

    return-object v0

    .line 56
    :cond_b
    const/16 v0, 0x2008

    if-ne p0, v0, :cond_c

    .line 57
    const-string v0, "VIRT_DISPLAY"

    return-object v0

    .line 59
    :cond_c
    const/16 v0, 0x4008

    if-ne p0, v0, :cond_d

    .line 60
    const-string v0, "PHY_DISPLAY"

    return-object v0

    .line 62
    :cond_d
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
