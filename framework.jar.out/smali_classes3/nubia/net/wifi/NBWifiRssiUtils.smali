.class public Lnubia/net/wifi/NBWifiRssiUtils;
.super Ljava/lang/Object;
.source "NBWifiRssiUtils.java"


# static fields
.field private static final LEVEL_4_RSSI_CEILINGS_2_4G:[[I

.field private static final LEVEL_4_RSSI_CEILINGS_5G:[[I

.field private static final LEVEL_5_RSSI_CEILINGS_2_4G:[[I

.field private static final LEVEL_5_RSSI_CEILINGS_5G:[[I

.field private static final MAX_RSSI:I = -0x37

.field private static final MIN_RSSI:I = -0x64

.field public static final NUBIA_RSSI_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.NUBIA_RSSI_CHANGED"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 20
    const/4 v0, 0x5

    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v7, 0x4

    aput-object v3, v1, v7

    sput-object v1, Lnubia/net/wifi/NBWifiRssiUtils;->LEVEL_5_RSSI_CEILINGS_2_4G:[[I

    .line 37
    new-array v1, v7, [[I

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    aput-object v3, v1, v6

    sput-object v1, Lnubia/net/wifi/NBWifiRssiUtils;->LEVEL_4_RSSI_CEILINGS_2_4G:[[I

    .line 52
    new-array v0, v0, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v2

    new-array v1, v2, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v6

    new-array v1, v2, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v7

    sput-object v0, Lnubia/net/wifi/NBWifiRssiUtils;->LEVEL_5_RSSI_CEILINGS_5G:[[I

    .line 69
    new-array v0, v7, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v2

    new-array v1, v2, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v6

    sput-object v0, Lnubia/net/wifi/NBWifiRssiUtils;->LEVEL_4_RSSI_CEILINGS_5G:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x5a
    .end array-data

    :array_1
    .array-data 4
        0x1
        -0x50
    .end array-data

    :array_2
    .array-data 4
        0x2
        -0x4c
    .end array-data

    :array_3
    .array-data 4
        0x3
        -0x46
    .end array-data

    :array_4
    .array-data 4
        0x4
        -0x37
    .end array-data

    :array_5
    .array-data 4
        0x0
        -0x5a
    .end array-data

    :array_6
    .array-data 4
        0x1
        -0x4c
    .end array-data

    :array_7
    .array-data 4
        0x2
        -0x46
    .end array-data

    :array_8
    .array-data 4
        0x3
        -0x37
    .end array-data

    :array_9
    .array-data 4
        0x0
        -0x58
    .end array-data

    :array_a
    .array-data 4
        0x1
        -0x52
    .end array-data

    :array_b
    .array-data 4
        0x2
        -0x4f
    .end array-data

    :array_c
    .array-data 4
        0x3
        -0x4a
    .end array-data

    :array_d
    .array-data 4
        0x4
        -0x37
    .end array-data

    :array_e
    .array-data 4
        0x0
        -0x58
    .end array-data

    :array_f
    .array-data 4
        0x1
        -0x4f
    .end array-data

    :array_10
    .array-data 4
        0x2
        -0x4a
    .end array-data

    :array_11
    .array-data 4
        0x3
        -0x37
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateSignalLevel(IIZ)I
    .locals 7
    .param p0, "rssi"    # I
    .param p1, "numLevels"    # I
    .param p2, "is5G"    # Z

    .line 109
    const/4 v0, 0x0

    .line 113
    .local v0, "level":I
    if-eqz p2, :cond_0

    .line 114
    sget-object v1, Lnubia/net/wifi/NBWifiRssiUtils;->LEVEL_4_RSSI_CEILINGS_5G:[[I

    .line 115
    .local v1, "level_4_rssi_ceilings":[[I
    sget-object v2, Lnubia/net/wifi/NBWifiRssiUtils;->LEVEL_5_RSSI_CEILINGS_5G:[[I

    .local v2, "level_5_rssi_ceilings":[[I
    goto :goto_0

    .line 117
    .end local v1    # "level_4_rssi_ceilings":[[I
    .end local v2    # "level_5_rssi_ceilings":[[I
    :cond_0
    sget-object v1, Lnubia/net/wifi/NBWifiRssiUtils;->LEVEL_4_RSSI_CEILINGS_2_4G:[[I

    .line 118
    .restart local v1    # "level_4_rssi_ceilings":[[I
    sget-object v2, Lnubia/net/wifi/NBWifiRssiUtils;->LEVEL_5_RSSI_CEILINGS_2_4G:[[I

    .line 121
    .restart local v2    # "level_5_rssi_ceilings":[[I
    :goto_0
    const/16 v3, -0x64

    const/4 v4, 0x0

    if-gt p0, v3, :cond_1

    .line 122
    return v4

    .line 123
    :cond_1
    const/16 v3, -0x37

    if-lt p0, v3, :cond_2

    .line 124
    add-int/lit8 v3, p1, -0x1

    return v3

    .line 126
    :cond_2
    const/4 v3, 0x4

    const/4 v5, 0x1

    if-ne v3, p1, :cond_4

    .line 127
    move v3, v4

    .local v3, "i":I
    :goto_1
    if-ge v3, p1, :cond_7

    .line 128
    aget-object v6, v1, v3

    aget v6, v6, v5

    if-le v6, p0, :cond_3

    .line 129
    aget-object v5, v1, v3

    aget v0, v5, v4

    .line 130
    goto :goto_3

    .line 127
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 133
    .end local v3    # "i":I
    :cond_4
    const/4 v3, 0x5

    if-ne v3, p1, :cond_6

    .line 134
    move v3, v4

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, p1, :cond_7

    .line 135
    aget-object v6, v2, v3

    aget v6, v6, v5

    if-le v6, p0, :cond_5

    .line 136
    aget-object v5, v2, v3

    aget v0, v5, v4

    .line 137
    goto :goto_3

    .line 134
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 141
    .end local v3    # "i":I
    :cond_6
    const/high16 v3, 0x42340000    # 45.0f

    .line 142
    .local v3, "inputRange":F
    add-int/lit8 v4, p1, -0x1

    int-to-float v4, v4

    .line 143
    .local v4, "outputRange":F
    add-int/lit8 v5, p0, 0x64

    int-to-float v5, v5

    mul-float/2addr v5, v4

    div-float/2addr v5, v3

    float-to-int v0, v5

    .line 146
    .end local v3    # "inputRange":F
    .end local v4    # "outputRange":F
    :cond_7
    :goto_3
    return v0
.end method

.method public static calculateSignalLevel(Lnubia/net/wifi/NBWifiRssiInfo;I)I
    .locals 4
    .param p0, "rssiInfo"    # Lnubia/net/wifi/NBWifiRssiInfo;
    .param p1, "numLevels"    # I

    .line 92
    invoke-virtual {p0}, Lnubia/net/wifi/NBWifiRssiInfo;->getNewFreq()I

    move-result v0

    const/16 v1, 0x9c4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 94
    .local v0, "is5G":Z
    :goto_0
    invoke-virtual {p0}, Lnubia/net/wifi/NBWifiRssiInfo;->getNewRssi()I

    move-result v1

    invoke-static {v1, p1, v0}, Lnubia/net/wifi/NBWifiRssiUtils;->calculateSignalLevel(IIZ)I

    move-result v1

    .line 95
    .local v1, "newRssiLevel":I
    invoke-virtual {p0}, Lnubia/net/wifi/NBWifiRssiInfo;->getLastRssi()I

    move-result v2

    invoke-static {v2, p1, v0}, Lnubia/net/wifi/NBWifiRssiUtils;->calculateSignalLevel(IIZ)I

    move-result v2

    .line 97
    .local v2, "lastRssiLevel":I
    invoke-static {v1, v2}, Lnubia/net/wifi/NBWifiRssiUtils;->updateRssiLevelByStepdown(II)I

    move-result v3

    return v3
.end method

.method private static updateRssiLevelByStepdown(II)I
    .locals 1
    .param p0, "newRssiLevel"    # I
    .param p1, "lastRssiLevel"    # I

    .line 150
    move v0, p1

    .line 151
    .local v0, "level":I
    if-ge p1, p0, :cond_0

    .line 152
    move v0, p0

    goto :goto_0

    .line 153
    :cond_0
    if-le p1, p0, :cond_1

    if-eqz p1, :cond_1

    .line 154
    add-int/lit8 v0, p1, -0x1

    .line 156
    :cond_1
    :goto_0
    return v0
.end method
