.class public Landroid/telephony/AccessNetworkUtils;
.super Ljava/lang/Object;
.source "AccessNetworkUtils.java"


# static fields
.field public static final INVALID_BAND:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDuplexModeForEutranBand(I)I
    .locals 3
    .param p0, "band"    # I

    .line 33
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    .line 34
    return v0

    .line 37
    :cond_0
    const/16 v1, 0x44

    if-lt p0, v1, :cond_1

    .line 38
    return v0

    .line 39
    :cond_1
    const/16 v1, 0x41

    const/4 v2, 0x1

    if-lt p0, v1, :cond_2

    .line 40
    return v2

    .line 41
    :cond_2
    const/16 v1, 0x2f

    if-lt p0, v1, :cond_3

    .line 42
    return v0

    .line 43
    :cond_3
    const/16 v1, 0x21

    if-lt p0, v1, :cond_4

    .line 44
    const/4 v0, 0x2

    return v0

    .line 45
    :cond_4
    if-lt p0, v2, :cond_5

    .line 46
    return v2

    .line 49
    :cond_5
    return v0
.end method

.method public static getOperatingBandForEarfcn(I)I
    .locals 2
    .param p0, "earfcn"    # I

    .line 61
    const/4 v0, -0x1

    const v1, 0x107cf

    if-le p0, v1, :cond_0

    .line 62
    return v0

    .line 63
    :cond_0
    const v1, 0x10726

    if-lt p0, v1, :cond_1

    .line 64
    return v0

    .line 65
    :cond_1
    const v1, 0x10384

    if-lt p0, v1, :cond_2

    .line 66
    const/16 v0, 0x42

    return v0

    .line 67
    :cond_2
    const/high16 v1, 0x10000

    if-lt p0, v1, :cond_3

    .line 68
    const/16 v0, 0x41

    return v0

    .line 69
    :cond_3
    const v1, 0xd443

    if-le p0, v1, :cond_4

    .line 70
    return v0

    .line 71
    :cond_4
    const v1, 0xb6c6

    if-lt p0, v1, :cond_5

    .line 72
    const/16 v0, 0x2e

    return v0

    .line 73
    :cond_5
    const v1, 0xb5fe

    if-lt p0, v1, :cond_6

    .line 74
    const/16 v0, 0x2d

    return v0

    .line 75
    :cond_6
    const v1, 0xb216

    if-lt p0, v1, :cond_7

    .line 76
    const/16 v0, 0x2c

    return v0

    .line 77
    :cond_7
    const v1, 0xaa46

    if-lt p0, v1, :cond_8

    .line 78
    const/16 v0, 0x2b

    return v0

    .line 79
    :cond_8
    const v1, 0xa276

    if-lt p0, v1, :cond_9

    .line 80
    const/16 v0, 0x2a

    return v0

    .line 81
    :cond_9
    const v1, 0x9ae2

    if-lt p0, v1, :cond_a

    .line 82
    const/16 v0, 0x29

    return v0

    .line 83
    :cond_a
    const v1, 0x96fa

    if-lt p0, v1, :cond_b

    .line 84
    const/16 v0, 0x28

    return v0

    .line 85
    :cond_b
    const v1, 0x956a

    if-lt p0, v1, :cond_c

    .line 86
    const/16 v0, 0x27

    return v0

    .line 87
    :cond_c
    const v1, 0x9376

    if-lt p0, v1, :cond_d

    .line 88
    const/16 v0, 0x26

    return v0

    .line 89
    :cond_d
    const v1, 0x92ae

    if-lt p0, v1, :cond_e

    .line 90
    const/16 v0, 0x25

    return v0

    .line 91
    :cond_e
    const v1, 0x9056

    if-lt p0, v1, :cond_f

    .line 92
    const/16 v0, 0x24

    return v0

    .line 93
    :cond_f
    const v1, 0x8dfe

    if-lt p0, v1, :cond_10

    .line 94
    const/16 v0, 0x23

    return v0

    .line 95
    :cond_10
    const v1, 0x8d68

    if-lt p0, v1, :cond_11

    .line 96
    const/16 v0, 0x22

    return v0

    .line 97
    :cond_11
    const v1, 0x8ca0

    if-lt p0, v1, :cond_12

    .line 98
    const/16 v0, 0x21

    return v0

    .line 99
    :cond_12
    const/16 v1, 0x2877

    if-le p0, v1, :cond_13

    .line 100
    return v0

    .line 101
    :cond_13
    const/16 v1, 0x26c0

    if-lt p0, v1, :cond_14

    .line 102
    return v0

    .line 103
    :cond_14
    const/16 v1, 0x268e

    if-lt p0, v1, :cond_15

    .line 104
    const/16 v0, 0x1f

    return v0

    .line 105
    :cond_15
    const/16 v1, 0x262a

    if-lt p0, v1, :cond_16

    .line 106
    const/16 v0, 0x1e

    return v0

    .line 107
    :cond_16
    const/16 v1, 0x25bc

    if-lt p0, v1, :cond_17

    .line 108
    return v0

    .line 109
    :cond_17
    const/16 v1, 0x23fa

    if-lt p0, v1, :cond_18

    .line 110
    const/16 v0, 0x1c

    return v0

    .line 111
    :cond_18
    const/16 v1, 0x2350

    if-lt p0, v1, :cond_19

    .line 112
    const/16 v0, 0x1b

    return v0

    .line 113
    :cond_19
    const/16 v1, 0x21f2

    if-lt p0, v1, :cond_1a

    .line 114
    const/16 v0, 0x1a

    return v0

    .line 115
    :cond_1a
    const/16 v1, 0x1f68

    if-lt p0, v1, :cond_1b

    .line 116
    const/16 v0, 0x19

    return v0

    .line 117
    :cond_1b
    const/16 v1, 0x1e14

    if-lt p0, v1, :cond_1c

    .line 118
    const/16 v0, 0x18

    return v0

    .line 119
    :cond_1c
    const/16 v1, 0x1d4c

    if-lt p0, v1, :cond_1d

    .line 120
    const/16 v0, 0x17

    return v0

    .line 121
    :cond_1d
    const/16 v1, 0x19c8

    if-lt p0, v1, :cond_1e

    .line 122
    const/16 v0, 0x16

    return v0

    .line 123
    :cond_1e
    const/16 v1, 0x1932

    if-lt p0, v1, :cond_1f

    .line 124
    const/16 v0, 0x15

    return v0

    .line 125
    :cond_1f
    const/16 v1, 0x1806

    if-lt p0, v1, :cond_20

    .line 126
    const/16 v0, 0x14

    return v0

    .line 127
    :cond_20
    const/16 v1, 0x1770

    if-lt p0, v1, :cond_21

    .line 128
    const/16 v0, 0x13

    return v0

    .line 129
    :cond_21
    const/16 v1, 0x16da

    if-lt p0, v1, :cond_22

    .line 130
    const/16 v0, 0x12

    return v0

    .line 131
    :cond_22
    const/16 v1, 0x1662

    if-lt p0, v1, :cond_23

    .line 132
    const/16 v0, 0x11

    return v0

    .line 133
    :cond_23
    const/16 v1, 0x1503

    if-le p0, v1, :cond_24

    .line 134
    return v0

    .line 135
    :cond_24
    const/16 v1, 0x14a0

    if-lt p0, v1, :cond_25

    .line 136
    const/16 v0, 0xe

    return v0

    .line 137
    :cond_25
    const/16 v1, 0x143c

    if-lt p0, v1, :cond_26

    .line 138
    const/16 v0, 0xd

    return v0

    .line 139
    :cond_26
    const/16 v1, 0x1392

    if-lt p0, v1, :cond_27

    .line 140
    const/16 v0, 0xc

    return v0

    .line 141
    :cond_27
    const/16 v1, 0x128e

    if-lt p0, v1, :cond_28

    .line 142
    const/16 v0, 0xb

    return v0

    .line 143
    :cond_28
    const/16 v1, 0x1036

    if-lt p0, v1, :cond_29

    .line 144
    const/16 v0, 0xa

    return v0

    .line 145
    :cond_29
    const/16 v1, 0xed8

    if-lt p0, v1, :cond_2a

    .line 146
    const/16 v0, 0x9

    return v0

    .line 147
    :cond_2a
    const/16 v1, 0xd7a

    if-lt p0, v1, :cond_2b

    .line 148
    const/16 v0, 0x8

    return v0

    .line 149
    :cond_2b
    const/16 v1, 0xabe

    if-lt p0, v1, :cond_2c

    .line 150
    const/4 v0, 0x7

    return v0

    .line 151
    :cond_2c
    const/16 v1, 0xa5a

    if-lt p0, v1, :cond_2d

    .line 152
    const/4 v0, 0x6

    return v0

    .line 153
    :cond_2d
    const/16 v1, 0x960

    if-lt p0, v1, :cond_2e

    .line 154
    const/4 v0, 0x5

    return v0

    .line 155
    :cond_2e
    const/16 v1, 0x79e

    if-lt p0, v1, :cond_2f

    .line 156
    const/4 v0, 0x4

    return v0

    .line 157
    :cond_2f
    const/16 v1, 0x4b0

    if-lt p0, v1, :cond_30

    .line 158
    const/4 v0, 0x3

    return v0

    .line 159
    :cond_30
    const/16 v1, 0x258

    if-lt p0, v1, :cond_31

    .line 160
    const/4 v0, 0x2

    return v0

    .line 161
    :cond_31
    if-ltz p0, :cond_32

    .line 162
    const/4 v0, 0x1

    return v0

    .line 165
    :cond_32
    return v0
.end method
