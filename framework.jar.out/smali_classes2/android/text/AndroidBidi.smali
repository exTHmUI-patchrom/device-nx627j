.class public Landroid/text/AndroidBidi;
.super Ljava/lang/Object;
.source "AndroidBidi.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/AndroidBidi$EmojiBidiOverride;
    }
.end annotation


# static fields
.field private static final sEmojiBidiOverride:Landroid/text/AndroidBidi$EmojiBidiOverride;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Landroid/text/AndroidBidi$EmojiBidiOverride;

    invoke-direct {v0}, Landroid/text/AndroidBidi$EmojiBidiOverride;-><init>()V

    sput-object v0, Landroid/text/AndroidBidi;->sEmojiBidiOverride:Landroid/text/AndroidBidi$EmojiBidiOverride;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bidi(I[C[B)I
    .locals 5
    .param p0, "dir"    # I
    .param p1, "chs"    # [C
    .param p2, "chInfo"    # [B

    .line 65
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 69
    array-length v0, p1

    .line 70
    .local v0, "length":I
    array-length v1, p2

    if-lt v1, v0, :cond_2

    .line 75
    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    .line 80
    :pswitch_0
    move v2, v1

    goto :goto_0

    .line 78
    :pswitch_1
    const/16 v2, 0x7e

    goto :goto_0

    .line 76
    :pswitch_2
    const/4 v2, 0x0

    goto :goto_0

    .line 77
    :pswitch_3
    const/4 v2, 0x1

    goto :goto_0

    .line 79
    :pswitch_4
    const/16 v2, 0x7f

    .line 80
    .local v2, "paraLevel":B
    :goto_0
    nop

    .line 82
    new-instance v3, Landroid/icu/text/Bidi;

    invoke-direct {v3, v0, v1}, Landroid/icu/text/Bidi;-><init>(II)V

    .line 83
    .local v3, "icuBidi":Landroid/icu/text/Bidi;
    sget-object v4, Landroid/text/AndroidBidi;->sEmojiBidiOverride:Landroid/text/AndroidBidi$EmojiBidiOverride;

    invoke-virtual {v3, v4}, Landroid/icu/text/Bidi;->setCustomClassifier(Landroid/icu/text/BidiClassifier;)V

    .line 84
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v2, v4}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    .line 85
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 86
    invoke-virtual {v3, v1}, Landroid/icu/text/Bidi;->getLevelAt(I)B

    move-result v4

    aput-byte v4, p2, v1

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 88
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v3}, Landroid/icu/text/Bidi;->getParaLevel()B

    move-result v1

    .line 89
    .local v1, "result":B
    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, -0x1

    :goto_2
    return v4

    .line 71
    .end local v1    # "result":B
    .end local v2    # "paraLevel":B
    .end local v3    # "icuBidi":Landroid/icu/text/Bidi;
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 66
    .end local v0    # "length":I
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static directions(I[BI[CII)Landroid/text/Layout$Directions;
    .locals 26
    .param p0, "dir"    # I
    .param p1, "levels"    # [B
    .param p2, "lstart"    # I
    .param p3, "chars"    # [C
    .param p4, "cstart"    # I
    .param p5, "len"    # I

    .line 106
    move/from16 v2, p5

    if-nez v2, :cond_0

    .line 107
    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v3

    .line 110
    :cond_0
    const/4 v4, 0x1

    move/from16 v5, p0

    if-ne v5, v4, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    move v6, v4

    .line 111
    .local v6, "baseLevel":I
    :goto_0
    aget-byte v7, p1, p2

    .line 112
    .local v7, "curLevel":I
    move v8, v7

    .line 113
    .local v8, "minLevel":I
    const/4 v9, 0x1

    .line 114
    .local v9, "runCount":I
    add-int/lit8 v10, p2, 0x1

    .local v10, "i":I
    add-int v11, p2, v2

    .local v11, "e":I
    :goto_1
    if-ge v10, v11, :cond_3

    .line 115
    aget-byte v12, p1, v10

    .line 116
    .local v12, "level":I
    if-eq v12, v7, :cond_2

    .line 117
    move v7, v12

    .line 118
    add-int/lit8 v9, v9, 0x1

    .line 114
    .end local v12    # "level":I
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 123
    .end local v10    # "i":I
    .end local v11    # "e":I
    :cond_3
    move v10, v2

    .line 124
    .local v10, "visLen":I
    and-int/lit8 v11, v7, 0x1

    and-int/lit8 v12, v6, 0x1

    if-eq v11, v12, :cond_7

    .line 126
    :goto_2
    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_6

    .line 127
    add-int v12, p4, v10

    aget-char v12, p3, v12

    .line 129
    .local v12, "ch":C
    const/16 v13, 0xa

    if-ne v12, v13, :cond_4

    .line 130
    add-int/lit8 v10, v10, -0x1

    .line 131
    goto :goto_3

    .line 134
    :cond_4
    const/16 v13, 0x20

    if-eq v12, v13, :cond_5

    const/16 v13, 0x9

    if-eq v12, v13, :cond_5

    .line 135
    goto :goto_3

    .line 137
    .end local v12    # "ch":C
    :cond_5
    goto :goto_2

    .line 138
    :cond_6
    :goto_3
    add-int/2addr v10, v4

    .line 139
    if-eq v10, v2, :cond_7

    .line 140
    add-int/lit8 v9, v9, 0x1

    .line 144
    :cond_7
    if-ne v9, v4, :cond_9

    if-ne v8, v6, :cond_9

    .line 146
    and-int/lit8 v3, v8, 0x1

    if-eqz v3, :cond_8

    .line 147
    sget-object v3, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-object v3

    .line 149
    :cond_8
    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v3

    .line 152
    :cond_9
    mul-int/lit8 v12, v9, 0x2

    new-array v12, v12, [I

    .line 153
    .local v12, "ld":[I
    move v13, v8

    .line 154
    .local v13, "maxLevel":I
    shl-int/lit8 v14, v8, 0x1a

    .line 159
    .local v14, "levelBits":I
    const/4 v15, 0x1

    .line 160
    .local v15, "n":I
    move/from16 v16, p2

    .line 161
    .local v16, "prev":I
    move v7, v8

    .line 162
    move/from16 v17, p2

    .local v17, "i":I
    add-int v18, p2, v10

    move v3, v8

    move/from16 v7, v17

    .end local v17    # "i":I
    .local v3, "minLevel":I
    .local v7, "i":I
    .local v8, "curLevel":I
    .local v18, "e":I
    :goto_4
    move/from16 v19, v18

    .end local v18    # "e":I
    .local v19, "e":I
    move/from16 v4, v19

    if-ge v7, v4, :cond_d

    .line 163
    .end local v19    # "e":I
    .local v4, "e":I
    move/from16 v21, v4

    aget-byte v4, p1, v7

    .line 164
    .local v4, "level":I
    .local v21, "e":I
    if-eq v4, v8, :cond_c

    .line 165
    move v8, v4

    .line 166
    if-le v4, v13, :cond_a

    .line 167
    move v13, v4

    goto :goto_5

    .line 168
    :cond_a
    if-ge v4, v3, :cond_b

    .line 169
    move v3, v4

    .line 172
    :cond_b
    :goto_5
    add-int/lit8 v17, v15, 0x1

    .local v17, "n":I
    sub-int v18, v7, v16

    or-int v18, v18, v14

    aput v18, v12, v15

    .line 173
    .end local v15    # "n":I
    add-int/lit8 v15, v17, 0x1

    .restart local v15    # "n":I
    sub-int v18, v7, p2

    aput v18, v12, v17

    .line 174
    .end local v17    # "n":I
    shl-int/lit8 v14, v8, 0x1a

    .line 175
    move v4, v7

    .line 162
    .end local v16    # "prev":I
    .local v4, "prev":I
    move/from16 v16, v4

    .end local v4    # "prev":I
    .restart local v16    # "prev":I
    :cond_c
    add-int/lit8 v7, v7, 0x1

    move/from16 v18, v21

    const/4 v4, 0x1

    goto :goto_4

    .line 178
    .end local v7    # "i":I
    .end local v21    # "e":I
    :cond_d
    add-int v4, p2, v10

    sub-int v4, v4, v16

    or-int/2addr v4, v14

    aput v4, v12, v15

    .line 179
    if-ge v10, v2, :cond_e

    .line 180
    const/4 v4, 0x1

    add-int/2addr v15, v4

    aput v10, v12, v15

    .line 181
    add-int/2addr v15, v4

    sub-int v4, v2, v10

    shl-int/lit8 v7, v6, 0x1a

    or-int/2addr v4, v7

    aput v4, v12, v15

    .line 196
    .end local v15    # "n":I
    .end local v16    # "prev":I
    :cond_e
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v6, :cond_10

    .line 197
    add-int/lit8 v3, v3, 0x1

    .line 198
    if-le v13, v3, :cond_f

    const/16 v20, 0x1

    goto :goto_6

    :cond_f
    const/16 v20, 0x0

    :goto_6
    move/from16 v4, v20

    .local v4, "swap":Z
    goto :goto_7

    .line 200
    .end local v4    # "swap":Z
    :cond_10
    const/4 v4, 0x1

    if-le v9, v4, :cond_11

    goto :goto_7

    :cond_11
    const/4 v4, 0x0

    .line 202
    .restart local v4    # "swap":Z
    :goto_7
    if-eqz v4, :cond_16

    .line 203
    add-int/lit8 v7, v13, -0x1

    .local v7, "level":I
    :goto_8
    if-lt v7, v3, :cond_16

    .line 204
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_9
    move/from16 v22, v15

    .end local v15    # "i":I
    .local v22, "i":I
    array-length v1, v12

    move/from16 v2, v22

    if-ge v2, v1, :cond_15

    .line 205
    .end local v22    # "i":I
    .local v2, "i":I
    aget v1, v12, v2

    aget-byte v1, p1, v1

    if-lt v1, v7, :cond_14

    .line 206
    add-int/lit8 v22, v2, 0x2

    .local v22, "e":I
    :goto_a
    move/from16 v1, v22

    .line 207
    .end local v22    # "e":I
    .local v1, "e":I
    move/from16 v23, v3

    array-length v3, v12

    .end local v3    # "minLevel":I
    .local v23, "minLevel":I
    if-ge v1, v3, :cond_12

    aget v3, v12, v1

    aget-byte v3, p1, v3

    if-lt v3, v7, :cond_12

    .line 208
    add-int/lit8 v22, v1, 0x2

    .line 206
    .end local v1    # "e":I
    .restart local v22    # "e":I
    move/from16 v3, v23

    goto :goto_a

    .line 210
    .end local v22    # "e":I
    .restart local v1    # "e":I
    :cond_12
    move v3, v2

    .local v3, "low":I
    add-int/lit8 v15, v1, -0x2

    .local v15, "hi":I
    :goto_b
    move/from16 v24, v15

    .end local v15    # "hi":I
    .local v24, "hi":I
    move/from16 v0, v24

    if-ge v3, v0, :cond_13

    .line 211
    .end local v24    # "hi":I
    .local v0, "hi":I
    aget v15, v12, v3

    .local v15, "x":I
    aget v16, v12, v0

    aput v16, v12, v3

    aput v15, v12, v0

    .line 212
    add-int/lit8 v16, v3, 0x1

    aget v15, v12, v16

    add-int/lit8 v16, v3, 0x1

    add-int/lit8 v24, v0, 0x1

    aget v17, v12, v24

    aput v17, v12, v16

    add-int/lit8 v24, v0, 0x1

    aput v15, v12, v24

    .line 210
    .end local v15    # "x":I
    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v15, v0, -0x2

    .end local v0    # "hi":I
    .local v15, "hi":I
    goto :goto_b

    .line 214
    .end local v3    # "low":I
    .end local v15    # "hi":I
    :cond_13
    add-int/lit8 v22, v1, 0x2

    .end local v1    # "e":I
    .end local v2    # "i":I
    .local v22, "i":I
    goto :goto_c

    .line 204
    .end local v22    # "i":I
    .end local v23    # "minLevel":I
    .restart local v2    # "i":I
    .local v3, "minLevel":I
    :cond_14
    move/from16 v23, v3

    move/from16 v22, v2

    .end local v2    # "i":I
    .end local v3    # "minLevel":I
    .restart local v22    # "i":I
    .restart local v23    # "minLevel":I
    :goto_c
    add-int/lit8 v15, v22, 0x2

    .end local v22    # "i":I
    .local v15, "i":I
    move/from16 v3, v23

    move/from16 v2, p5

    goto :goto_9

    .line 203
    .end local v15    # "i":I
    .end local v23    # "minLevel":I
    .restart local v3    # "minLevel":I
    :cond_15
    move/from16 v23, v3

    .end local v3    # "minLevel":I
    .restart local v23    # "minLevel":I
    add-int/lit8 v7, v7, -0x1

    move/from16 v2, p5

    goto :goto_8

    .line 219
    .end local v7    # "level":I
    .end local v23    # "minLevel":I
    .restart local v3    # "minLevel":I
    :cond_16
    move/from16 v23, v3

    .end local v3    # "minLevel":I
    .restart local v23    # "minLevel":I
    new-instance v0, Landroid/text/Layout$Directions;

    invoke-direct {v0, v12}, Landroid/text/Layout$Directions;-><init>([I)V

    return-object v0
.end method
