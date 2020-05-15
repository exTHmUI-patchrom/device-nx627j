.class public final Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$ReasonCode;
.super Ljava/lang/Object;
.source "ISupplicantStaIfaceCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReasonCode"
.end annotation


# static fields
.field public static final AKMP_NOT_VALID:I = 0x14

.field public static final AUTHORIZED_ACCESS_LIMIT_REACHED:I = 0x2e

.field public static final BAD_CIPHER_OR_AKM:I = 0x1d

.field public static final BSS_TRANSITION_DISASSOC:I = 0xc

.field public static final CIPHER_SUITE_REJECTED:I = 0x18

.field public static final CLASS2_FRAME_FROM_NONAUTH_STA:I = 0x6

.field public static final CLASS3_FRAME_FROM_NONASSOC_STA:I = 0x7

.field public static final DEAUTH_LEAVING:I = 0x3

.field public static final DISASSOC_AP_BUSY:I = 0x5

.field public static final DISASSOC_DUE_TO_INACTIVITY:I = 0x4

.field public static final DISASSOC_LOW_ACK:I = 0x22

.field public static final DISASSOC_STA_HAS_LEFT:I = 0x8

.field public static final END_TS_BA_DLS:I = 0x25

.field public static final EXCEEDED_TXOP:I = 0x23

.field public static final EXTERNAL_SERVICE_REQUIREMENTS:I = 0x2f

.field public static final FOURWAY_HANDSHAKE_TIMEOUT:I = 0xf

.field public static final GROUP_CIPHER_NOT_VALID:I = 0x12

.field public static final GROUP_KEY_UPDATE_TIMEOUT:I = 0x10

.field public static final IEEE_802_1X_AUTH_FAILED:I = 0x17

.field public static final IE_IN_4WAY_DIFFERS:I = 0x11

.field public static final INVALID_FTE:I = 0x33

.field public static final INVALID_FT_ACTION_FRAME_COUNT:I = 0x30

.field public static final INVALID_IE:I = 0xd

.field public static final INVALID_MDE:I = 0x32

.field public static final INVALID_PMKID:I = 0x31

.field public static final INVALID_RSN_IE_CAPAB:I = 0x16

.field public static final MAC_ADDRESS_ALREADY_EXISTS_IN_MBSS:I = 0x40

.field public static final MESH_CHANNEL_SWITCH_REGULATORY_REQ:I = 0x41

.field public static final MESH_CHANNEL_SWITCH_UNSPECIFIED:I = 0x42

.field public static final MESH_CLOSE_RCVD:I = 0x37

.field public static final MESH_CONFIG_POLICY_VIOLATION:I = 0x36

.field public static final MESH_CONFIRM_TIMEOUT:I = 0x39

.field public static final MESH_INCONSISTENT_PARAMS:I = 0x3b

.field public static final MESH_INVALID_GTK:I = 0x3a

.field public static final MESH_INVALID_SECURITY_CAP:I = 0x3c

.field public static final MESH_MAX_PEERS:I = 0x35

.field public static final MESH_MAX_RETRIES:I = 0x38

.field public static final MESH_PATH_ERROR_DEST_UNREACHABLE:I = 0x3f

.field public static final MESH_PATH_ERROR_NO_FORWARDING_INFO:I = 0x3e

.field public static final MESH_PATH_ERROR_NO_PROXY_INFO:I = 0x3d

.field public static final MESH_PEERING_CANCELLED:I = 0x34

.field public static final MICHAEL_MIC_FAILURE:I = 0xe

.field public static final NOT_AUTHORIZED_THIS_LOCATION:I = 0x1e

.field public static final NOT_ENOUGH_BANDWIDTH:I = 0x21

.field public static final NO_SSP_ROAMING_AGREEMENT:I = 0x1c

.field public static final PAIRWISE_CIPHER_NOT_VALID:I = 0x13

.field public static final PEERKEY_MISMATCH:I = 0x2d

.field public static final PREV_AUTH_NOT_VALID:I = 0x2

.field public static final PWR_CAPABILITY_NOT_VALID:I = 0xa

.field public static final SERVICE_CHANGE_PRECLUDES_TS:I = 0x1f

.field public static final SSP_REQUESTED_DISASSOC:I = 0x1b

.field public static final STA_LEAVING:I = 0x24

.field public static final STA_REQ_ASSOC_WITHOUT_AUTH:I = 0x9

.field public static final SUPPORTED_CHANNEL_NOT_VALID:I = 0xb

.field public static final TDLS_TEARDOWN_UNREACHABLE:I = 0x19

.field public static final TDLS_TEARDOWN_UNSPECIFIED:I = 0x1a

.field public static final TIMEOUT:I = 0x27

.field public static final UNKNOWN_TS_BA:I = 0x26

.field public static final UNSPECIFIED:I = 0x1

.field public static final UNSPECIFIED_QOS_REASON:I = 0x20

.field public static final UNSUPPORTED_RSN_IE_VERSION:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 2018
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2019
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 2020
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2021
    const-string v2, "UNSPECIFIED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2022
    or-int/lit8 v1, v1, 0x1

    .line 2024
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 2025
    const-string v2, "PREV_AUTH_NOT_VALID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2026
    or-int/lit8 v1, v1, 0x2

    .line 2028
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 2029
    const-string v2, "DEAUTH_LEAVING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2030
    or-int/lit8 v1, v1, 0x3

    .line 2032
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 2033
    const-string v2, "DISASSOC_DUE_TO_INACTIVITY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2034
    or-int/lit8 v1, v1, 0x4

    .line 2036
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 2037
    const-string v2, "DISASSOC_AP_BUSY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2038
    or-int/lit8 v1, v1, 0x5

    .line 2040
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 2041
    const-string v2, "CLASS2_FRAME_FROM_NONAUTH_STA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2042
    or-int/lit8 v1, v1, 0x6

    .line 2044
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 2045
    const-string v2, "CLASS3_FRAME_FROM_NONASSOC_STA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2046
    or-int/lit8 v1, v1, 0x7

    .line 2048
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 2049
    const-string v2, "DISASSOC_STA_HAS_LEFT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2050
    or-int/lit8 v1, v1, 0x8

    .line 2052
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 2053
    const-string v2, "STA_REQ_ASSOC_WITHOUT_AUTH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2054
    or-int/lit8 v1, v1, 0x9

    .line 2056
    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 2057
    const-string v2, "PWR_CAPABILITY_NOT_VALID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2058
    or-int/lit8 v1, v1, 0xa

    .line 2060
    :cond_9
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    .line 2061
    const-string v2, "SUPPORTED_CHANNEL_NOT_VALID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2062
    or-int/lit8 v1, v1, 0xb

    .line 2064
    :cond_a
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    .line 2065
    const-string v2, "BSS_TRANSITION_DISASSOC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2066
    or-int/lit8 v1, v1, 0xc

    .line 2068
    :cond_b
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    .line 2069
    const-string v2, "INVALID_IE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2070
    or-int/lit8 v1, v1, 0xd

    .line 2072
    :cond_c
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_d

    .line 2073
    const-string v2, "MICHAEL_MIC_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2074
    or-int/lit8 v1, v1, 0xe

    .line 2076
    :cond_d
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_e

    .line 2077
    const-string v2, "FOURWAY_HANDSHAKE_TIMEOUT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2078
    or-int/lit8 v1, v1, 0xf

    .line 2080
    :cond_e
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_f

    .line 2081
    const-string v2, "GROUP_KEY_UPDATE_TIMEOUT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2082
    or-int/lit8 v1, v1, 0x10

    .line 2084
    :cond_f
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_10

    .line 2085
    const-string v2, "IE_IN_4WAY_DIFFERS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2086
    or-int/lit8 v1, v1, 0x11

    .line 2088
    :cond_10
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_11

    .line 2089
    const-string v2, "GROUP_CIPHER_NOT_VALID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2090
    or-int/lit8 v1, v1, 0x12

    .line 2092
    :cond_11
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_12

    .line 2093
    const-string v2, "PAIRWISE_CIPHER_NOT_VALID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2094
    or-int/lit8 v1, v1, 0x13

    .line 2096
    :cond_12
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_13

    .line 2097
    const-string v2, "AKMP_NOT_VALID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2098
    or-int/lit8 v1, v1, 0x14

    .line 2100
    :cond_13
    and-int/lit8 v2, p0, 0x15

    const/16 v3, 0x15

    if-ne v2, v3, :cond_14

    .line 2101
    const-string v2, "UNSUPPORTED_RSN_IE_VERSION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2102
    or-int/lit8 v1, v1, 0x15

    .line 2104
    :cond_14
    and-int/lit8 v2, p0, 0x16

    const/16 v3, 0x16

    if-ne v2, v3, :cond_15

    .line 2105
    const-string v2, "INVALID_RSN_IE_CAPAB"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2106
    or-int/lit8 v1, v1, 0x16

    .line 2108
    :cond_15
    and-int/lit8 v2, p0, 0x17

    const/16 v3, 0x17

    if-ne v2, v3, :cond_16

    .line 2109
    const-string v2, "IEEE_802_1X_AUTH_FAILED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2110
    or-int/lit8 v1, v1, 0x17

    .line 2112
    :cond_16
    and-int/lit8 v2, p0, 0x18

    const/16 v3, 0x18

    if-ne v2, v3, :cond_17

    .line 2113
    const-string v2, "CIPHER_SUITE_REJECTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2114
    or-int/lit8 v1, v1, 0x18

    .line 2116
    :cond_17
    and-int/lit8 v2, p0, 0x19

    const/16 v3, 0x19

    if-ne v2, v3, :cond_18

    .line 2117
    const-string v2, "TDLS_TEARDOWN_UNREACHABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2118
    or-int/lit8 v1, v1, 0x19

    .line 2120
    :cond_18
    and-int/lit8 v2, p0, 0x1a

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_19

    .line 2121
    const-string v2, "TDLS_TEARDOWN_UNSPECIFIED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2122
    or-int/lit8 v1, v1, 0x1a

    .line 2124
    :cond_19
    and-int/lit8 v2, p0, 0x1b

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_1a

    .line 2125
    const-string v2, "SSP_REQUESTED_DISASSOC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2126
    or-int/lit8 v1, v1, 0x1b

    .line 2128
    :cond_1a
    and-int/lit8 v2, p0, 0x1c

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_1b

    .line 2129
    const-string v2, "NO_SSP_ROAMING_AGREEMENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2130
    or-int/lit8 v1, v1, 0x1c

    .line 2132
    :cond_1b
    and-int/lit8 v2, p0, 0x1d

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_1c

    .line 2133
    const-string v2, "BAD_CIPHER_OR_AKM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2134
    or-int/lit8 v1, v1, 0x1d

    .line 2136
    :cond_1c
    and-int/lit8 v2, p0, 0x1e

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_1d

    .line 2137
    const-string v2, "NOT_AUTHORIZED_THIS_LOCATION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2138
    or-int/lit8 v1, v1, 0x1e

    .line 2140
    :cond_1d
    and-int/lit8 v2, p0, 0x1f

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_1e

    .line 2141
    const-string v2, "SERVICE_CHANGE_PRECLUDES_TS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2142
    or-int/lit8 v1, v1, 0x1f

    .line 2144
    :cond_1e
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1f

    .line 2145
    const-string v2, "UNSPECIFIED_QOS_REASON"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2146
    or-int/lit8 v1, v1, 0x20

    .line 2148
    :cond_1f
    and-int/lit8 v2, p0, 0x21

    const/16 v3, 0x21

    if-ne v2, v3, :cond_20

    .line 2149
    const-string v2, "NOT_ENOUGH_BANDWIDTH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2150
    or-int/lit8 v1, v1, 0x21

    .line 2152
    :cond_20
    and-int/lit8 v2, p0, 0x22

    const/16 v3, 0x22

    if-ne v2, v3, :cond_21

    .line 2153
    const-string v2, "DISASSOC_LOW_ACK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2154
    or-int/lit8 v1, v1, 0x22

    .line 2156
    :cond_21
    and-int/lit8 v2, p0, 0x23

    const/16 v3, 0x23

    if-ne v2, v3, :cond_22

    .line 2157
    const-string v2, "EXCEEDED_TXOP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2158
    or-int/lit8 v1, v1, 0x23

    .line 2160
    :cond_22
    and-int/lit8 v2, p0, 0x24

    const/16 v3, 0x24

    if-ne v2, v3, :cond_23

    .line 2161
    const-string v2, "STA_LEAVING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2162
    or-int/lit8 v1, v1, 0x24

    .line 2164
    :cond_23
    and-int/lit8 v2, p0, 0x25

    const/16 v3, 0x25

    if-ne v2, v3, :cond_24

    .line 2165
    const-string v2, "END_TS_BA_DLS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2166
    or-int/lit8 v1, v1, 0x25

    .line 2168
    :cond_24
    and-int/lit8 v2, p0, 0x26

    const/16 v3, 0x26

    if-ne v2, v3, :cond_25

    .line 2169
    const-string v2, "UNKNOWN_TS_BA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2170
    or-int/lit8 v1, v1, 0x26

    .line 2172
    :cond_25
    and-int/lit8 v2, p0, 0x27

    const/16 v3, 0x27

    if-ne v2, v3, :cond_26

    .line 2173
    const-string v2, "TIMEOUT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2174
    or-int/lit8 v1, v1, 0x27

    .line 2176
    :cond_26
    and-int/lit8 v2, p0, 0x2d

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_27

    .line 2177
    const-string v2, "PEERKEY_MISMATCH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2178
    or-int/lit8 v1, v1, 0x2d

    .line 2180
    :cond_27
    and-int/lit8 v2, p0, 0x2e

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_28

    .line 2181
    const-string v2, "AUTHORIZED_ACCESS_LIMIT_REACHED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2182
    or-int/lit8 v1, v1, 0x2e

    .line 2184
    :cond_28
    and-int/lit8 v2, p0, 0x2f

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_29

    .line 2185
    const-string v2, "EXTERNAL_SERVICE_REQUIREMENTS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2186
    or-int/lit8 v1, v1, 0x2f

    .line 2188
    :cond_29
    and-int/lit8 v2, p0, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_2a

    .line 2189
    const-string v2, "INVALID_FT_ACTION_FRAME_COUNT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2190
    or-int/lit8 v1, v1, 0x30

    .line 2192
    :cond_2a
    and-int/lit8 v2, p0, 0x31

    const/16 v3, 0x31

    if-ne v2, v3, :cond_2b

    .line 2193
    const-string v2, "INVALID_PMKID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2194
    or-int/lit8 v1, v1, 0x31

    .line 2196
    :cond_2b
    and-int/lit8 v2, p0, 0x32

    const/16 v3, 0x32

    if-ne v2, v3, :cond_2c

    .line 2197
    const-string v2, "INVALID_MDE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2198
    or-int/lit8 v1, v1, 0x32

    .line 2200
    :cond_2c
    and-int/lit8 v2, p0, 0x33

    const/16 v3, 0x33

    if-ne v2, v3, :cond_2d

    .line 2201
    const-string v2, "INVALID_FTE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2202
    or-int/lit8 v1, v1, 0x33

    .line 2204
    :cond_2d
    and-int/lit8 v2, p0, 0x34

    const/16 v3, 0x34

    if-ne v2, v3, :cond_2e

    .line 2205
    const-string v2, "MESH_PEERING_CANCELLED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2206
    or-int/lit8 v1, v1, 0x34

    .line 2208
    :cond_2e
    and-int/lit8 v2, p0, 0x35

    const/16 v3, 0x35

    if-ne v2, v3, :cond_2f

    .line 2209
    const-string v2, "MESH_MAX_PEERS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2210
    or-int/lit8 v1, v1, 0x35

    .line 2212
    :cond_2f
    and-int/lit8 v2, p0, 0x36

    const/16 v3, 0x36

    if-ne v2, v3, :cond_30

    .line 2213
    const-string v2, "MESH_CONFIG_POLICY_VIOLATION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2214
    or-int/lit8 v1, v1, 0x36

    .line 2216
    :cond_30
    and-int/lit8 v2, p0, 0x37

    const/16 v3, 0x37

    if-ne v2, v3, :cond_31

    .line 2217
    const-string v2, "MESH_CLOSE_RCVD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2218
    or-int/lit8 v1, v1, 0x37

    .line 2220
    :cond_31
    and-int/lit8 v2, p0, 0x38

    const/16 v3, 0x38

    if-ne v2, v3, :cond_32

    .line 2221
    const-string v2, "MESH_MAX_RETRIES"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2222
    or-int/lit8 v1, v1, 0x38

    .line 2224
    :cond_32
    and-int/lit8 v2, p0, 0x39

    const/16 v3, 0x39

    if-ne v2, v3, :cond_33

    .line 2225
    const-string v2, "MESH_CONFIRM_TIMEOUT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2226
    or-int/lit8 v1, v1, 0x39

    .line 2228
    :cond_33
    and-int/lit8 v2, p0, 0x3a

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_34

    .line 2229
    const-string v2, "MESH_INVALID_GTK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2230
    or-int/lit8 v1, v1, 0x3a

    .line 2232
    :cond_34
    and-int/lit8 v2, p0, 0x3b

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_35

    .line 2233
    const-string v2, "MESH_INCONSISTENT_PARAMS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2234
    or-int/lit8 v1, v1, 0x3b

    .line 2236
    :cond_35
    and-int/lit8 v2, p0, 0x3c

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_36

    .line 2237
    const-string v2, "MESH_INVALID_SECURITY_CAP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2238
    or-int/lit8 v1, v1, 0x3c

    .line 2240
    :cond_36
    and-int/lit8 v2, p0, 0x3d

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_37

    .line 2241
    const-string v2, "MESH_PATH_ERROR_NO_PROXY_INFO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2242
    or-int/lit8 v1, v1, 0x3d

    .line 2244
    :cond_37
    and-int/lit8 v2, p0, 0x3e

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_38

    .line 2245
    const-string v2, "MESH_PATH_ERROR_NO_FORWARDING_INFO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2246
    or-int/lit8 v1, v1, 0x3e

    .line 2248
    :cond_38
    and-int/lit8 v2, p0, 0x3f

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_39

    .line 2249
    const-string v2, "MESH_PATH_ERROR_DEST_UNREACHABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2250
    or-int/lit8 v1, v1, 0x3f

    .line 2252
    :cond_39
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_3a

    .line 2253
    const-string v2, "MAC_ADDRESS_ALREADY_EXISTS_IN_MBSS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2254
    or-int/lit8 v1, v1, 0x40

    .line 2256
    :cond_3a
    and-int/lit8 v2, p0, 0x41

    const/16 v3, 0x41

    if-ne v2, v3, :cond_3b

    .line 2257
    const-string v2, "MESH_CHANNEL_SWITCH_REGULATORY_REQ"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2258
    or-int/lit8 v1, v1, 0x41

    .line 2260
    :cond_3b
    and-int/lit8 v2, p0, 0x42

    const/16 v3, 0x42

    if-ne v2, v3, :cond_3c

    .line 2261
    const-string v2, "MESH_CHANNEL_SWITCH_UNSPECIFIED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2262
    or-int/lit8 v1, v1, 0x42

    .line 2264
    :cond_3c
    if-eq p0, v1, :cond_3d

    .line 2265
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

    .line 2267
    :cond_3d
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 1831
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 1832
    const-string v0, "UNSPECIFIED"

    return-object v0

    .line 1834
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 1835
    const-string v0, "PREV_AUTH_NOT_VALID"

    return-object v0

    .line 1837
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 1838
    const-string v0, "DEAUTH_LEAVING"

    return-object v0

    .line 1840
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 1841
    const-string v0, "DISASSOC_DUE_TO_INACTIVITY"

    return-object v0

    .line 1843
    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    .line 1844
    const-string v0, "DISASSOC_AP_BUSY"

    return-object v0

    .line 1846
    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    .line 1847
    const-string v0, "CLASS2_FRAME_FROM_NONAUTH_STA"

    return-object v0

    .line 1849
    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    .line 1850
    const-string v0, "CLASS3_FRAME_FROM_NONASSOC_STA"

    return-object v0

    .line 1852
    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    .line 1853
    const-string v0, "DISASSOC_STA_HAS_LEFT"

    return-object v0

    .line 1855
    :cond_7
    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    .line 1856
    const-string v0, "STA_REQ_ASSOC_WITHOUT_AUTH"

    return-object v0

    .line 1858
    :cond_8
    const/16 v0, 0xa

    if-ne p0, v0, :cond_9

    .line 1859
    const-string v0, "PWR_CAPABILITY_NOT_VALID"

    return-object v0

    .line 1861
    :cond_9
    const/16 v0, 0xb

    if-ne p0, v0, :cond_a

    .line 1862
    const-string v0, "SUPPORTED_CHANNEL_NOT_VALID"

    return-object v0

    .line 1864
    :cond_a
    const/16 v0, 0xc

    if-ne p0, v0, :cond_b

    .line 1865
    const-string v0, "BSS_TRANSITION_DISASSOC"

    return-object v0

    .line 1867
    :cond_b
    const/16 v0, 0xd

    if-ne p0, v0, :cond_c

    .line 1868
    const-string v0, "INVALID_IE"

    return-object v0

    .line 1870
    :cond_c
    const/16 v0, 0xe

    if-ne p0, v0, :cond_d

    .line 1871
    const-string v0, "MICHAEL_MIC_FAILURE"

    return-object v0

    .line 1873
    :cond_d
    const/16 v0, 0xf

    if-ne p0, v0, :cond_e

    .line 1874
    const-string v0, "FOURWAY_HANDSHAKE_TIMEOUT"

    return-object v0

    .line 1876
    :cond_e
    const/16 v0, 0x10

    if-ne p0, v0, :cond_f

    .line 1877
    const-string v0, "GROUP_KEY_UPDATE_TIMEOUT"

    return-object v0

    .line 1879
    :cond_f
    const/16 v0, 0x11

    if-ne p0, v0, :cond_10

    .line 1880
    const-string v0, "IE_IN_4WAY_DIFFERS"

    return-object v0

    .line 1882
    :cond_10
    const/16 v0, 0x12

    if-ne p0, v0, :cond_11

    .line 1883
    const-string v0, "GROUP_CIPHER_NOT_VALID"

    return-object v0

    .line 1885
    :cond_11
    const/16 v0, 0x13

    if-ne p0, v0, :cond_12

    .line 1886
    const-string v0, "PAIRWISE_CIPHER_NOT_VALID"

    return-object v0

    .line 1888
    :cond_12
    const/16 v0, 0x14

    if-ne p0, v0, :cond_13

    .line 1889
    const-string v0, "AKMP_NOT_VALID"

    return-object v0

    .line 1891
    :cond_13
    const/16 v0, 0x15

    if-ne p0, v0, :cond_14

    .line 1892
    const-string v0, "UNSUPPORTED_RSN_IE_VERSION"

    return-object v0

    .line 1894
    :cond_14
    const/16 v0, 0x16

    if-ne p0, v0, :cond_15

    .line 1895
    const-string v0, "INVALID_RSN_IE_CAPAB"

    return-object v0

    .line 1897
    :cond_15
    const/16 v0, 0x17

    if-ne p0, v0, :cond_16

    .line 1898
    const-string v0, "IEEE_802_1X_AUTH_FAILED"

    return-object v0

    .line 1900
    :cond_16
    const/16 v0, 0x18

    if-ne p0, v0, :cond_17

    .line 1901
    const-string v0, "CIPHER_SUITE_REJECTED"

    return-object v0

    .line 1903
    :cond_17
    const/16 v0, 0x19

    if-ne p0, v0, :cond_18

    .line 1904
    const-string v0, "TDLS_TEARDOWN_UNREACHABLE"

    return-object v0

    .line 1906
    :cond_18
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_19

    .line 1907
    const-string v0, "TDLS_TEARDOWN_UNSPECIFIED"

    return-object v0

    .line 1909
    :cond_19
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_1a

    .line 1910
    const-string v0, "SSP_REQUESTED_DISASSOC"

    return-object v0

    .line 1912
    :cond_1a
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_1b

    .line 1913
    const-string v0, "NO_SSP_ROAMING_AGREEMENT"

    return-object v0

    .line 1915
    :cond_1b
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_1c

    .line 1916
    const-string v0, "BAD_CIPHER_OR_AKM"

    return-object v0

    .line 1918
    :cond_1c
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_1d

    .line 1919
    const-string v0, "NOT_AUTHORIZED_THIS_LOCATION"

    return-object v0

    .line 1921
    :cond_1d
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_1e

    .line 1922
    const-string v0, "SERVICE_CHANGE_PRECLUDES_TS"

    return-object v0

    .line 1924
    :cond_1e
    const/16 v0, 0x20

    if-ne p0, v0, :cond_1f

    .line 1925
    const-string v0, "UNSPECIFIED_QOS_REASON"

    return-object v0

    .line 1927
    :cond_1f
    const/16 v0, 0x21

    if-ne p0, v0, :cond_20

    .line 1928
    const-string v0, "NOT_ENOUGH_BANDWIDTH"

    return-object v0

    .line 1930
    :cond_20
    const/16 v0, 0x22

    if-ne p0, v0, :cond_21

    .line 1931
    const-string v0, "DISASSOC_LOW_ACK"

    return-object v0

    .line 1933
    :cond_21
    const/16 v0, 0x23

    if-ne p0, v0, :cond_22

    .line 1934
    const-string v0, "EXCEEDED_TXOP"

    return-object v0

    .line 1936
    :cond_22
    const/16 v0, 0x24

    if-ne p0, v0, :cond_23

    .line 1937
    const-string v0, "STA_LEAVING"

    return-object v0

    .line 1939
    :cond_23
    const/16 v0, 0x25

    if-ne p0, v0, :cond_24

    .line 1940
    const-string v0, "END_TS_BA_DLS"

    return-object v0

    .line 1942
    :cond_24
    const/16 v0, 0x26

    if-ne p0, v0, :cond_25

    .line 1943
    const-string v0, "UNKNOWN_TS_BA"

    return-object v0

    .line 1945
    :cond_25
    const/16 v0, 0x27

    if-ne p0, v0, :cond_26

    .line 1946
    const-string v0, "TIMEOUT"

    return-object v0

    .line 1948
    :cond_26
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_27

    .line 1949
    const-string v0, "PEERKEY_MISMATCH"

    return-object v0

    .line 1951
    :cond_27
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_28

    .line 1952
    const-string v0, "AUTHORIZED_ACCESS_LIMIT_REACHED"

    return-object v0

    .line 1954
    :cond_28
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_29

    .line 1955
    const-string v0, "EXTERNAL_SERVICE_REQUIREMENTS"

    return-object v0

    .line 1957
    :cond_29
    const/16 v0, 0x30

    if-ne p0, v0, :cond_2a

    .line 1958
    const-string v0, "INVALID_FT_ACTION_FRAME_COUNT"

    return-object v0

    .line 1960
    :cond_2a
    const/16 v0, 0x31

    if-ne p0, v0, :cond_2b

    .line 1961
    const-string v0, "INVALID_PMKID"

    return-object v0

    .line 1963
    :cond_2b
    const/16 v0, 0x32

    if-ne p0, v0, :cond_2c

    .line 1964
    const-string v0, "INVALID_MDE"

    return-object v0

    .line 1966
    :cond_2c
    const/16 v0, 0x33

    if-ne p0, v0, :cond_2d

    .line 1967
    const-string v0, "INVALID_FTE"

    return-object v0

    .line 1969
    :cond_2d
    const/16 v0, 0x34

    if-ne p0, v0, :cond_2e

    .line 1970
    const-string v0, "MESH_PEERING_CANCELLED"

    return-object v0

    .line 1972
    :cond_2e
    const/16 v0, 0x35

    if-ne p0, v0, :cond_2f

    .line 1973
    const-string v0, "MESH_MAX_PEERS"

    return-object v0

    .line 1975
    :cond_2f
    const/16 v0, 0x36

    if-ne p0, v0, :cond_30

    .line 1976
    const-string v0, "MESH_CONFIG_POLICY_VIOLATION"

    return-object v0

    .line 1978
    :cond_30
    const/16 v0, 0x37

    if-ne p0, v0, :cond_31

    .line 1979
    const-string v0, "MESH_CLOSE_RCVD"

    return-object v0

    .line 1981
    :cond_31
    const/16 v0, 0x38

    if-ne p0, v0, :cond_32

    .line 1982
    const-string v0, "MESH_MAX_RETRIES"

    return-object v0

    .line 1984
    :cond_32
    const/16 v0, 0x39

    if-ne p0, v0, :cond_33

    .line 1985
    const-string v0, "MESH_CONFIRM_TIMEOUT"

    return-object v0

    .line 1987
    :cond_33
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_34

    .line 1988
    const-string v0, "MESH_INVALID_GTK"

    return-object v0

    .line 1990
    :cond_34
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_35

    .line 1991
    const-string v0, "MESH_INCONSISTENT_PARAMS"

    return-object v0

    .line 1993
    :cond_35
    const/16 v0, 0x3c

    if-ne p0, v0, :cond_36

    .line 1994
    const-string v0, "MESH_INVALID_SECURITY_CAP"

    return-object v0

    .line 1996
    :cond_36
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_37

    .line 1997
    const-string v0, "MESH_PATH_ERROR_NO_PROXY_INFO"

    return-object v0

    .line 1999
    :cond_37
    const/16 v0, 0x3e

    if-ne p0, v0, :cond_38

    .line 2000
    const-string v0, "MESH_PATH_ERROR_NO_FORWARDING_INFO"

    return-object v0

    .line 2002
    :cond_38
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_39

    .line 2003
    const-string v0, "MESH_PATH_ERROR_DEST_UNREACHABLE"

    return-object v0

    .line 2005
    :cond_39
    const/16 v0, 0x40

    if-ne p0, v0, :cond_3a

    .line 2006
    const-string v0, "MAC_ADDRESS_ALREADY_EXISTS_IN_MBSS"

    return-object v0

    .line 2008
    :cond_3a
    const/16 v0, 0x41

    if-ne p0, v0, :cond_3b

    .line 2009
    const-string v0, "MESH_CHANNEL_SWITCH_REGULATORY_REQ"

    return-object v0

    .line 2011
    :cond_3b
    const/16 v0, 0x42

    if-ne p0, v0, :cond_3c

    .line 2012
    const-string v0, "MESH_CHANNEL_SWITCH_UNSPECIFIED"

    return-object v0

    .line 2014
    :cond_3c
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
